FC=gfortran
FFLAGS=-g
OBJ=typedef.o cars.o process.o

%.o: %.f90
	$(FC) -c -o $@ $< $(FFLAGS)

cars: $(OBJ)
	$(FC) -o $@ $^ $(FFLAGS)

.PHONY: clean

clean:
	rm *.o *.mod main
