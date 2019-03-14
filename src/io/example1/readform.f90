Program read_float
  use, intrinsic  :: iso_fortran_env 
  Implicit none

  ! Define the size of a single precision float
  Integer, parameter  :: sp = REAL32
  
  ! Declare a float to hold our input
  Real(kind=sp) :: my_float
  
  ! Prompt for input and read it in
  print *, "Please input a floating point value"
  read "(f12.5)", my_float
  
  ! Print out the value just inputted for confirmation
  print *, "You inputted: ", my_float
end program
