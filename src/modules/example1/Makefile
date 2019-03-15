FC=gfortran
FFLAGS=-g
OBJ=my_module.o moduletest.o

%.o: %.f90
	$(FC) -c -o $@ $< $(FFLAGS)

moduletest: $(OBJ)
	$(FC) -o $@ $^ $(FFLAGS)

.PHONY: clean

clean:
	rm *.o *.mod main
