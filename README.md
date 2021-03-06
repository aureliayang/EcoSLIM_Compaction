# Improved Stream Compaction 
1. **compaction/ecoslim_compaction.cuf** is a module that contians two device subroutines. Both are for 2D particle array. The first one needs a temporary array while the second one is in-place compaction (with race condition). It has passed test on Della-GPU at Princeton through a small array of size 8*4. 
2. **prefix_sum/thrust_scan:** test for scan using a column in 2D array. It uses a wrapper to call scan in Thrust.
3. **prefix_sum/thrust_scan_MPI:** test for scan using MPI (tested on Tiger-GPU).
4. **Documents/:** presentation slides in the GPU Hackathon
5. **profile_serial_code/:** the origional serial code
6. **profile_compaction/:** the parallel in-place compaction code

**The test/profiling results (slurm-xxx.out in each folder) using an array of size 80,000,000*10 for serial and parallel codes:**   
**Environment (Princeton Della-GPU cluster):** AMD EPYC 7H12 64-Core Processor, NVIDIA A100 GPU, nvhpc/21.1, cudatoolkit/11.1  
**a.** the parallel code used 12.473 ms, the serial code used 1405.444 ms, so the speedup is **112-fold** (1405.444/12.473)  
**b.** considering that it is not necessary to transfer data if using parallel code on GPU, it is **159-fold** ((1405.444+338.730+244.039)/12.473)
