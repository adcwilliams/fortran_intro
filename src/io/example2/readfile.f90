Program read_file
  use, intrinsic  :: iso_fortran_env 
  Implicit none

  ! Define the size of a single precision float
  Integer, parameter  :: sp = REAL32
  
  ! Declare a counter to hold our position in the file
  Integer       :: counter

  ! What is the state of the read process
  Integer       :: state

  ! Declare floats to hold our input
  Real(kind=sp) :: fx, fy

  ! Open a file containing a list of floats
  open(9, file='floatlist.txt')

  ! We don't know how many rows of values are in this file, so
  ! we can choose a arbitrarily high number to make sure we don't miss any.
  do counter = 1, 100
    ! Read each pair of floats, storing them in the variables we created.
    ! When we reach the end of the file, branch directly to the labelled
    ! statement.
    read(unit=9, fmt="(f4.2,x,f4.2)", iostat=state, err=100, end=200) fx, fy

    ! Print out the values we just read in as a check.
    print "(f4.2,2x,f4.2)", fx, fy
  end do

  ! Message to print if there's an error reading from the file.
  100 print *, "There is an error!"
  ! Message to print when we reach the end of the file.
  200 print *, "I'm at the end of the file!"

  ! Close the file before exiting.
  close(9)

end program
