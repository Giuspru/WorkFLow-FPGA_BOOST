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
