FC=gfortran
FFLAGS=-g
OBJ=efficient.o inefficient.o

.PHONY: clean,all
.DEFAULT: all

all: efficient inefficient

clean:
	rm *.o *.mod efficient inefficient

%.o: %.f90
	$(FC) -c -o $@ $< $(FFLAGS)

efficient: efficient.o
	$(FC) -o $@ $^ $(FFLAGS)

inefficient: inefficient.o
	$(FC) -o $@ $^ $(FFLAGS)
