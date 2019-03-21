FC=gfortran
FFLAGS=-g
OBJ=process_array.o dynamic.o

%.o: %.f90
	$(FC) -c -o $@ $< $(FFLAGS)

dynamic: $(OBJ)
	$(FC) -o $@ $^ $(FFLAGS)

.PHONY: clean

clean:
	rm *.o *.mod dynamic
