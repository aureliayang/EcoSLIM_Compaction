# Last Change:  2021-06-02 10:51:56
all: test_compact

test_compact: cscan.o ecoslim_thrust.cuf ecoslim_compaction.cuf test_compact.cuf
	nvfortran -o test_compact ecoslim_thrust.cuf ecoslim_compaction.cuf test_compact.cuf cscan.o -lstdc++
cscan.o: cscan.cu
	nvcc -c $^ -o $@
clean:
	rm *.o *.mod test_compact
