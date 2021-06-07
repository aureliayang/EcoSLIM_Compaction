# Improved Stream Compaction 
1. **compaction/ecoslim_compaction.cuf** is a module that contians two device subroutines. Both are for 2D particle array. The first one needs a temporary array while the second one is in-place compaction. It has passed test on Della-GPU at Princeton through a small array of size 8*4.
2. **prefix_sum/thrust_scan:** test for scan using a column in 2D array. It uses a wrapper to call scan in Thrust.
3. **prefix_sum/thrust_scan_MPI:** test for scan using MPI.
4. **Documents/:** presentation slides in the GPU Hackathon
5. **profile_serial_code/:** the origional serial code
6. **profile_compaction/:** the parallel in-place compaction code

**The results of tests using array of size 80,000,000 for serial and paralel code:**   
**a.** the parallel cod use 10.685 ms, the serial code use 1445.623 ms, so th speedup is **135-fold** (1445.623/10.685)  
**b.** considering that it is not necessary to transfer data if using parallel code on GPU, it is **190-fold** ((1445.623+344.304+244.287)/10.685)
