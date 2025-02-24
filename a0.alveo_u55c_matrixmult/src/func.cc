#include "func.h"

void func(unsigned int M, unsigned int K, unsigned int N, const ap_int<16> *x, const ap_int<16>* y, ap_int<32> *z){
    
    // The lines below specify how external memory and interfaces interact with the generated hardware module
    // mode=m_axis: AXI Master Interface (m_axi) allows the hardware accelerator to independently access memory instead of relying on the CPU.
    // port=x(y,z): The function will use AXI transactions to read/write the contents of x , y ,z.
    // offset=slave: Control how memory addresses are mapped, CPU controlling the FPGA
    // bundle=gnem: Without this, each m_axi interface would require a separate memory connection, which is inefficient.

    #pragma hls interface mode=m_axi port=x offset=slave bundle=gmem
    #pragma hls interface mode=m_axi port=y offset=slave bundle=gmem
    #pragma hls interface mode=m_axi port=z offset=slave bundle=gmem
    

    // Implementing matrix multiplication as vectors multiplication:
    for(int i=0; i<M ;i++){
        for(int j=0;j<N; j++){
            #pragma hls pipeline
            ap_int<32> sum = 0;
            for(int k=0; k<K; k++){
                sum += x[i*K+k]*y[k*N+j];
            }
            z[i*N+j] = sum;
        }
    }
}