FC=gfortran
FFLAGS=-g
OBJ=demonstration.o

%.o: %.f90
	$(FC) -c -o $@ $< $(FFLAGS)

demonstration: $(OBJ)
	$(FC) -o $@ $^ $(FFLAGS)

.PHONY: clean

clean:
	rm *.o *.mod demonstration
