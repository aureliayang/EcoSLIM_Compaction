# Last Change:  2021-06-02 10:51:56
all: test_scan

test_scan: cscan.o thrust_module.cuf device_utility.cuf test_scan.cuf
	mpif90 -o test_scan thrust_module.cuf device_utility.cuf test_scan.cuf cscan.o -lstdc++
cscan.o: cscan.cu
	nvcc -c $^ -o $@
clean:
	rm *.o *.mod test_scan
