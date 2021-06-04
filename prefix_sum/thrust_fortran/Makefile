# Last Change:  2021-06-02 10:51:56
all: test_sort

test_sort: csort.o thrust_module.cuf test_sort.cuf
	nvfortran -o test_sort thrust_module.cuf test_sort.cuf csort.o -lstdc++
csort.o: csort.cu
	nvcc -c $^ -o $@
clean:
	rm *.o *.mod test_sort
