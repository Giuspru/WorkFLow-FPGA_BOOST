# WorkFLow-FPGA_BOOST
A step by step guide for a FPGA project 

# Progetto FPGA Accelerator

Questa repository serve per tenere traccia dei vari passaggi necessari per sfruttare una FPGA come acceleratore di calcolo. Di seguito sono elencati i 5 punti fondamentali del progetto.

## 1. Prerequisiti

Per iniziare con il progetto **Workflow_FPGA_BOOST**, assicurati di avere i seguenti prerequisiti:

- **Pacchetti Software Necessari**:
  - Driver specifici per la FPGA utilizzata
  - Librerie di supporto per l'host e la piattaforma FPGA
  - Pacchetti di sviluppo per il sistema operativo (es. `gcc`, `make`, etc.)

- **Versione Vitis**: È richiesto Vitis **(versione minima: X.X)**, aggiornato per supportare le ultime funzionalità di progettazione FPGA.

- **Numero Seriale FPGA**: Identifica il numero seriale della tua FPGA tramite gli strumenti forniti (es. `xbutil`) e assicurati che sia configurata correttamente per l'accelerazione.

> **Nota**: Verifica che il tuo ambiente sia correttamente configurato seguendo la documentazione ufficiale di Vitis e delle librerie FPGA specifiche.


## 2. Implementazione Del Software

Per ogni progetto che desideri implementare, sarà creata una cartella dedicata con il nome dell'operazione che intendi eseguire, o un nome che ne descriva chiaramente lo scopo.

Ogni cartella di progetto conterrà i seguenti file principali:

- **run_hls.tcl**: Questo file è utilizzato per eseguire la parte di High-Level Synthesis (HLS) del progetto. Contiene gli script necessari per sintetizzare il codice in un formato compatibile con la FPGA.
  
- **testbench.cc**: Un file C++ che contiene il testbench per verificare il corretto funzionamento della logica FPGA. Esso simula l'esecuzione dell'algoritmo sviluppato per validare i risultati prima di caricare il progetto sulla FPGA.

- **launch.py**: Un script Python che automatizza il processo di esecuzione del progetto, interfacciandosi con gli strumenti di sviluppo per eseguire la compilazione, il caricamento e il monitoraggio delle prestazioni sulla FPGA.

Inoltre, ogni cartella conterrà una sottocartella chiamata **`src`**, che conterrà:

- **func.cc**: Questo file contiene le implementazioni delle funzioni in C++ che saranno successivamente utilizzate nell'implementazione della logica FPGA.

- **func.h**: Il file header che dichiara le funzioni definite in `func.cc`, fornendo le interfacce necessarie per la loro implementazione nell'FPGA.

Questa struttura permette di gestire in modo chiaro il codice sorgente delle funzioni da accelerare e separa le logiche di test, configurazione e implementazione nella FPGA.


## 3. Implementazione della Simulazione C e della Sintesi del Software tramite Vitis

**Sintesi tramite Vitis HLS**:
   - Una volta che il progetto è pronto, la sintesi viene avviata utilizzando il comando seguente:
   
     ```bash
     vitis_hls -f run_hls.tcl
     ```
   
   - Il file `run_hls.tcl` contiene tutte le configurazioni necessarie per avviare la sintesi, tra cui i testbench, le librerie e le opzioni di compilazione. Durante l'esecuzione del comando, Vitis HLS compila il codice C e genera un'implementazione hardware ottimizzata.

## 4. Compiling as Binary Image

Per compilare il progetto come immagine binaria da caricare sull'FPGA, è necessario eseguire il comando bash seguente:

```bash
v++ -l -t hw --platform xilinx_u55c_gen3x16_xdma_3_202210_1 -o nomefile.xclbin ./path/filexport.xo
```

## 5. Injection bitstream in FPGA

Una volta creato il file .xclbin sarà possibile utilizzarlo mediante l'esecuzione dello script python launch.py. 
Generalemte il file:
  - Impora le librerie necessarie alla comunicazione con l'FPGA
  - Effettua il caricamento dell'overlay dell'FPGA
  - Gestisce l'utilizzo della memoria
  - Effettua l'operazione sia su CPU che su FPGA e ne compara le tempistiche 
  - Verifica dei risultati
  - Liberazione dei risultati.
