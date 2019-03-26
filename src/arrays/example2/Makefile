FC=gfortran
FFLAGS=-g
OBJ=assumed_shape.o array_handling.o

%.o: %.f90
	$(FC) -c -o $@ $< $(FFLAGS)

assumed_shape: $(OBJ)
	$(FC) -o $@ $^ $(FFLAGS)

.PHONY: clean

clean:
	rm *.o *.mod assumed_shape
