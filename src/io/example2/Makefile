FC=gfortran
FFLAGS=-g
OBJ=readfile.o

%.o: %.f90
	$(FC) -c -o $@ $< $(FFLAGS)

readfile: $(OBJ)
	$(FC) -o $@ $^ $(FFLAGS)

.PHONY: clean

clean:
	rm *.o *.mod readfile
