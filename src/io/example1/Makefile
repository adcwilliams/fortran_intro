FC=gfortran
FFLAGS=-g
OBJ=readform.o

%.o: %.f90
	$(FC) -c -o $@ $< $(FFLAGS)

readform: $(OBJ)
	$(FC) -o $@ $^ $(FFLAGS)

.PHONY: clean

clean:
	rm *.o *.mod main
