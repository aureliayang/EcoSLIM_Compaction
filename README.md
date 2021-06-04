# Improved Stream Compaction 
1. compaction is a module that contians two device subroutines. Both are for 2D particle array. The first one needs a temporary array while the second one is in place compaction. It has passed test on Della-GPU through a small array of size 8*4.
2. prefix_sum/thrust_scan: test for scan using a column in 2D array. It uses a wrapper to call scan in Thrust.
3. prefix_sum/thrust_scan_MPI: test for scan using MPI.
4. Documents/: presentation slides in the GPU Hackathon
