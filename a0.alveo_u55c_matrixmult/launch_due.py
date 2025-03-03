import pynq
import numpy as np 
from pynq import allocate
import time

ol = pynq.Overlay("./matmult.xclbin")
keys = ol._keys()
print(keys)


matrix_mul = ol.func_1
size = 2
dimention = size * size


x_buf = allocate(shape=(dimention) , dtype=np.int16)
y_buf = allocate(shape=(dimention) , dtype=np.int16)
z_buf = allocate(shape=(dimention) , dtype=np.int32)

x_buf[:] = np.arange(1, dimention + 1, dtype=np.int16) 
y_buf[:] = np.arange(1, dimention + 1, dtype=np.int16)

print("Matrici 1 e 2 vettorizzate:\n")
print(x_buf)
print(y_buf, "\n")


print("Starting software (CPU) multiplication...")
start_cpu = time.time()

z_cpu = np.zeros(dimention, dtype=np.int32)
for i in range(size):
    for j in range(size):
        sum_value = 0
        for k in range(size):
            sum_value += x_buf[i * size + k] * y_buf[k * size + j]
        z_cpu[i * size + j] = sum_value
        

#z_cpu = x_buf.copy().astype(np.int32) * y_buf.copy().astype(np.float32)
end_cpu = time.time()
cpu_time = end_cpu - start_cpu

print("risultato moltiplicazione: " , z_cpu)
print(f"Software multiplication completed in {cpu_time:.6f} seconds.\n")


print("Starting FPGA multiplication...")
start_fpga = time.time()

x_buf.sync_to_device()
y_buf.sync_to_device()

matrix_mul.call(size,size,size, x_buf, y_buf, z_buf)
z_buf.sync_from_device()
print("\n########z_buf:  " , z_buf)

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
print("CPU Result (first 10 elements):", z_cpu[:3])
print("FPGA Result (first 10 elements):", z_buf[:3])

print(f"\nSummary of Execution Times:")
print(f"Software (CPU) Multiplication Time: {cpu_time:.6f} seconds")
print(f"FPGA Multiplication Time: {fpga_time:.6f} seconds")




try:
    ol.free()
    x_buf.freebuffer()
    y_buf.freebuffer()
    z_buf.freebuffer()
except Exception as e:
    print("error deleting buffers", e)


