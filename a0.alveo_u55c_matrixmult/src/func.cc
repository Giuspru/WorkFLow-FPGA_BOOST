#include "func.h"

void func(unsigned int M, unsigned int K, unsigned int N, const ap_int<16> *x, const ap_int<16>* y, ap_int<32> *z){
    #pragma hls interface mode=m_axi port=x offset=slave bundle=gmem
    #pragma hls interface mode=m_axi port=y offset=slave bundle=gmem
    #pragma hls interface mode=m_axi port=z offset=slave bundle=gmem

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