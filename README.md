# WorkFLow-FPGA_BOOST
A step by step guide for a FPGA project 

# Progetto FPGA Accelerator

Questa repository serve per tenere traccia dei vari passaggi necessari per sfruttare una FPGA come acceleratore di calcolo. Di seguito sono elencati i 5 punti fondamentali del progetto.

## 1) Verifica dei Prerequisiti di Base del Progetto
- Controllare i pacchetti richiesti (lista dei pacchetti ancora da aggiungere).
- Assicurarsi che la scheda FPGA corrisponda al numero di serie corretto.
- Verificare che la versione di Vitis utilizzata sia quella corretta.

## 2) Implementazione del Software
Per ogni progetto verrà creata una cartella che conterrà i seguenti file:
- `ReadMe.md`
- `run_hls.tlc`
- `testbench.cc`

Inoltre, sarà presente una directory chiamata `src`, all'interno della quale verranno caricati i seguenti file:
- `func.cc`
- `func.h`

## 3) Implementazione della Simulazione in C e Sintesi del Software
Implementazione della simulazione del progetto in C e della sintesi del software tramite Vitis.

## 4) Esportazione del Design in Formato XO
Esportare il design nel formato XO con il comando:
```bash 
export_design -format xo
```
## 5) Compiling as binary image:
```bash
- test -d ~/vitis_ip_cache || mkdir ~/vitis_ip_cache
v++ --target hw --platform xilinx_u50_gen3x16_xdma_5_202210_1 --link proj/solution/impl/export.xo -o proj.xclbin --remote_ip_cache ~/vitis_ip_cache
```
altra opzione da verificare, queta è quella di giulio che funziona

```bash
v++ -l -t hw --platform  xilinx_u55c_gen3x16_xdma_3_202210_1 -o output.xclbin export.xo
```


