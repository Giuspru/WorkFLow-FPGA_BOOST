'''
La funzione a cui facciamo riferimento, e che poi e quella da cui estrapoliamo il file .xo è la seguente
Viene riportata qua sotto per comodità, ma apoositamente commentata.

#include "func.h"

void func(unsigned int N, const ap_int<16> *x, const ap_int<16>* y, ap_int<32> >
  #pragma hls interface mode=m_axi port=x offset=slave bundle=gmem
  #pragma hls interface mode=m_axi port=y offset=slave bundle=gmem
  #pragma hls interface mode=m_axi port=z offset=slave bundle=gmem
  for(int i = 0; i < N; i++){
    #pragma hls pipeline
    z[i] = x[i] * y[i];
  }
}
'''

#importazione delle librerie utilizzate 
import pynq
import numpy as np
from pynq import allocate
import time


'''
- pynq è una libreria progettata per lavorare con FPGA, in particolare con la 
piattaforma Zynq di Xilinx (noi quale abbiamo?)
- Overlay è una classe della libreria, questa rappresenta un bitstream FPGA che
puo essere caricato dinamicamente sull'hardware.
- In pratica: carica il file output.xclbin nella memoria della FPGA, l'FPGA di
conseguenza viene configurata per eseguire le funzioni specifiche del bitstream. 
'''
ol = pynq.Overlay("./prova.xclbin")

'''
- Il metodo Keys  restituisce un elenco dei moduli o delle interfacce hardware
 mappati nel bitstream.
- GLi elementi che vengono riportati sovrebbero essere le risorse che puoi
utilizzare e controllare tramite PYNQ
'''
keys = ol._keys()
print(keys)
#for key, val in ol.items():
#  print("key: ",key,  " val: ", val)

'''
- Vengono effettuate alcune operazioni preliminari
- func_1  dovrebbe essere il nome di una risorsa specifica definita nel bitstream FPGA
- vmult quindi contiene un riferimento al kernel harware chiamato func1. Questo puo
 essere configurato ed eseguito. Dovrebbe essere la nostra funzione accelerata.
- NON MI E' CHIARO QUESTA func_1
'''

vmult = ol.func_1
size = 512

'''
- Vengono creati dei buffer di memoria utilizzati per trasferire dati tra la CPU 
e FPGA, per operazioni accelerate. 
- La funzione allocate appartiene alla libreria PYNQ ed è usata per creare questi 
buffer di memoria condivisa, accessibili sia da CPU che da FPGA.
- La forma è definita da 512 elementi, che possono essere di tipo np.int16
- x_buf, y_buf sono buffer che conterranno dati in ingresso per il kernel hardwarre 
in questo caso saranno i due vettori che dovranno essere moltiplicati.
- z_buf è sempre un buffer di memoria, verrà utilizzato per memorizzare i risultati
dell'elaborazione. 
- SI USA ALLOCATE PERCHè I DATI CHE DEVONO ESSERE UTILIZZATI SIA DA FPGA CHE DA CPU
SI DEVONO TROVARE IN UNA MEMORIA SPECIALE CHE APPUNTO PUO ESSERE RAGGIUNTA DA ENTRAM

'''
# Allocate buffers for input and output arrays in PL memory (FPGA DDR)
x_buf = allocate(shape=(size,), dtype=np.int16)
y_buf = allocate(shape=(size,), dtype=np.int16)
z_buf = allocate(shape=(size,), dtype=np.int32)  # Output buffer must match the result type (ap_int<32>)


'''
- Viene effettuata la'inizializzazione dei buffer x e y, con dei dati specifici.
- np.arange(start, stop , dtype) è una funzione numpy che genera un array di numeri
interi in un intervallo specifico . In questo caso l'intervallo inizia da 1 e 
finisce a size+1 elementi. In totale avrò esattamente size elementi.
- Sia il buffer x che y vengono riempiti con i valori generati da np.arange()
'''

# Initialize input arrays with sample data (for example: [1, 2, 3, ..., 1024])
x_buf[:] = np.arange(1, size + 1, dtype=np.int16)  # [1, 2, 3, ..., 1024]
y_buf[:] = np.arange(1, size + 1, dtype=np.int16)  # [1, 2, 3, ..., 1024]


'''
- Come specificato in rosso, viene effettuato il calcolo della funzione 
utilizzando direttamente la CPU 
- Viene calcolato il tempo di inizio e di fine, poi calcolato l'intervallo tmeporale
- Questo perchè successivamente vogliamo fare un confronto tra FPGA e CPU.
- In Z_cpu viene salvata l'operazione elemento per elemento di una moltiplicazione 
tra due vettori. 
'''
# Perform Software Multiplication using NumPy and time it
print("Starting software (CPU) multiplication...")
start_cpu = time.time()
# Using NumPy's vectorized multiplication
z_cpu = x_buf.copy().astype(np.int32) * y_buf.copy().astype(np.float32)
end_cpu = time.time()
cpu_time = end_cpu - start_cpu
print(f"Software multiplication completed in {cpu_time:.6f} seconds.\n")


'''
- Stessa cosa di prima, però questa volta si utilizza la FPGA.
- .sync _to_device() è una funzione che sincronizza i dati contenuti nel buffer x e y
dalla memoria del processore verso la memoria dell'FPGA dove il kernel hardware li utilizza
- Sincronizzare signifa che i dati che si trovano nel buffer in memoria CPU vengono 
copiati nella memoria accesssibile dall'FPGA.
- PERCHE' E' NECESSARIO SINCRONIZZARE I DATI? QUANDO SI LAVORA CON PYNQ I DATI DEVONO 
ESSERE TRASFERITI TRA CPU E FPGA. LA MEMORIA DI FPGA E' SEPARATA DA QUELLA DI CPU, QUINDI
è NECESSARIO USARE COMANDI SPECIFICI PER COPIARE I DATI TRA I DUE.
LA SINCRONIZZAZIONE E' UNA PREPARAZIONE NECESSARIA
'''
# Perform FPGA Multiplication and time it
print("Starting FPGA multiplication...")
start_fpga = time.time()
# Sync buffers to FPGA (to ensure input buffers are ready)
x_buf.sync_to_device()
y_buf.sync_to_device()

'''
- Viene eseguita l'operazione di chiamata a una funzione hardwarre, che è stata 
configurata per eseguire un'operazione accelerata du FPGA.
- Vmul che è ol.func1, ha il metodo call, che viene utilizzato per avviare
l'esecuzione del kernel hardware passando i parametri richiesti.
- cosa succede: 1) Il kernel hardware definito nell'overlay (func1) viene eseguito sull'FPGA
2) I dati vengono passati dalla CPU alla FPGA attraverso i buffer
3) Il kernel Hardware esegue l'operazione sui dati e scrive il risultato su z_buf
'''
# Call the hardware function (vmult) with input and output buffers
# Arguments are: vmult(N, x, y, z)
vmult.call(size, x_buf, y_buf, z_buf)

'''
- Viene utilizzata la funzione .sync_from_device(), questa sincronizza i dati di ritorno
dall'FPGA alla CPU dopo aver eseguito il kernel hardware vmult. 
- E' essenziale chiamare questa funzione dopo aver eseguito il kernel vmult per ottenere
i risultati calcolati dall'FPGA
- Calcolo del tempo.
'''
# Sync the output buffer back to CPU (to retrieve the result)
z_buf.sync_from_device()
end_fpga = time.time()
fpga_time = end_fpga - start_fpga
print(f"FPGA multiplication completed in {fpga_time:.6f} seconds.\n")

''' Blocco di verifica'''
# Verify that both results are identical
print("Verifying results...")
if np.array_equal(z_cpu, z_buf):
    print("SUCCESS: The FPGA and CPU results match.")
else:
    print("ERROR: The FPGA and CPU results do not match.")
# Optionally, print the first few elements of the results to verify
print("\nSample Results:")
print("CPU Result (first 10 elements):", z_cpu[:10])
print("FPGA Result (first 10 elements):", z_buf[:10])

print(f"\nSummary of Execution Times:")
print(f"Software (CPU) Multiplication Time: {cpu_time:.6f} seconds")
print(f"FPGA Multiplication Time: {fpga_time:.6f} seconds")


'''
Blocco di codice utilizzato per rilasciare le risorse utilizzate durante l'
esecuzione del programma. Viene utilizzato per liberare la memoria allocata per 
l'overlay FPGA e i buffer che sono stati creati.
'''
try:
  ol.free()
  # Free the buffers (optional but recommended for resource management)
  x_buf.freebuffer()
  y_buf.freebuffer()
  z_buf.freebuffer()
except Exception as e:
  print("error deleting buffers", e)
