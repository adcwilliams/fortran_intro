FC=gfortran
FFLAGS=-g
OBJ=main.o

%.o: %.f90
	$(FC) -c -o $@ $< $(FFLAGS)

main: $(OBJ)
	$(FC) -o $@ $^ $(FFLAGS)

.PHONY: clean

clean:
	rm *.o *.mod main
