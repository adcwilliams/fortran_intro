FC=gfortran
FFLAGS=-g
OBJ=dynamic.o process_array.o

%.o: %.f90
	$(FC) -c -o $@ $< $(FFLAGS)

dynamic: $(OBJ)
	$(FC) -o $@ $^ $(FFLAGS)

.PHONY: clean

clean:
	rm *.o *.mod main
