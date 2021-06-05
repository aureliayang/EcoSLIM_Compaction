# Last Change:  2021-06-02 10:51:56
all: test_compact

test_compact: ecoslim_cthrustscan.o ecoslim_thrustscan.cuf ecoslim_compaction.cuf test_compact.cuf
	nvfortran -o test_compact ecoslim_thrustscan.cuf ecoslim_compaction.cuf test_compact.cuf ecoslim_cthrustscan.o -lstdc++
ecoslim_cthrustscan.o: ecoslim_cthrustscan.cu
	nvcc -c $^ -o $@
clean:
	rm *.o *.mod test_compact
