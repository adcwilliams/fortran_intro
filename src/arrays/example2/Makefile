FC=gfortran
FFLAGS=-g
OBJ=array_handling.o assumed_shape.o

%.o: %.f90
	$(FC) -c -o $@ $< $(FFLAGS)

assumed_shape: $(OBJ)
	$(FC) -o $@ $^ $(FFLAGS)

.PHONY: clean

clean:
	rm *.o *.mod assumed_shape
