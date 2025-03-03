#include "src/func.h"
#include <cassert>
#include <cstdio>
#include <cstdlib>
#include <vector>

int main(int argc, char **argv) {
    srand(125);
    assert(argc > 2);
    unsigned int ntest = atoi(argv[1]);
    unsigned int ndata = atoi(argv[2]);
    printf("Will run %u tests with max dimension %u\n", ntest, ndata);
    assert(ndata > 5 && ntest > 0);
    
    // Allocate enough space for an ndata x ndata matrix.
    std::vector<ap_int<16>> a(ndata * ndata), b(ndata * ndata);
    std::vector<ap_int<32>> c(ndata * ndata), c_ref(ndata * ndata);
    
    for (unsigned int itest = 0; itest < ntest; ++itest) {
        // Choose a random dimension n between 5 and ndata.
        unsigned int n = (rand() % (ndata - 5)) + 5;
        assert(n <= ndata);
        printf("Test %u, with dimension %u\n", itest, n);
        
        // Initialize only the n x n portion of the matrices.
        for (unsigned int i = 0; i < n * n; ++i) {
            a[i] = (rand() & 0xFFF);
            b[i] = (rand() & 0xFFF);
        }

        // print the matrices a and bss
        printf("Matrix A\n");
        for (unsigned int i = 0; i < n; ++i) {
            for (unsigned int j = 0; j < n; ++j) {
                printf("%7d ", a[i * n + j].to_int());
            }
            printf("\n");
        }

    printf("Matrix B\n");
        for (unsigned int i = 0; i < n; ++i) {
            for (unsigned int j = 0; j < n; ++j) {
                printf("%7d ", b[i * n + j].to_int());
            }
            printf("\n");
        }
        
        

        // Compute the reference matrix multiplication: c = a * b.
        for (unsigned int i = 0; i < n; i++) {
            for (unsigned int j = 0; j < n; j++) {
                ap_int<32> sum = 0;
                for (unsigned int k = 0; k < n; k++) {
                    sum += a[i * n + k] * b[k * n + j];
                }
                c_ref[i * n + j] = sum;
            }
        }

        // print the resulting matrix 
        printf("\n");
        printf("Matrix C\n");
        printf("\n");
        for (unsigned int i = 0; i < n; ++i) {
            for (unsigned int j = 0; j < n; ++j) {
                printf("%7d ", c_ref[i * n + j].to_int());
            }
            printf("\n");
        }

        //print a new line:
        printf("\n");
        
        // Call your external function (make sure it uses the same memory layout)
        func(n, n, n, a.data(), b.data(), c.data());
        
        // print the resulting matrix
        printf("Matrix C from the FPGA simulation\n");
        printf("\n");
        for (unsigned int i = 0; i < n; ++i) {
            for (unsigned int j = 0; j < n; ++j) {
                printf("%7d ", c[i * n + j].to_int());
            }
            printf("\n");
        }
        printf("\n");
    }
    return 0;
}
