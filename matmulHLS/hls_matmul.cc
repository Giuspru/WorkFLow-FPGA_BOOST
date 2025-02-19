

void matrix_mul(unsigned int M, unsigned int K, unsigned int N, const ap_int<16> *X, const ap_int<16> *Y, ap_int<32> *Z){
    #pragma HLS INTERFACE m_axi port=X offset=slave bundle=gmem
    #pragma HLS INTERFACE m_axi port=Y offset=slave bundle=gmem
    #pragma HLS INTERFACE m_axi port=Z offset=slave bundle=gmem
    #pragma HLS INTERFACE s_axilite port=M
    #pragma HLS INTERFACE s_axilite port=K
    #pragma HLS INTERFACE s_axilite port=N
    #pragma HLS INTERFACE s_axilite port=return

    for(int i=0; i<M ,i++){
        for(int j=0;j<N; j++){
            #pragma HLS PIPELINE
            ap_int<32> sum = 0;
            for(int k=0; k<K; k++){
                sum += X[i*K+k]*Y[k*N+j];
            }
            Z[i*N+j] = sum;
        }
    }
}