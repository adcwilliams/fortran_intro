Program array_inefficient
  Use, intrinsic  :: iso_fortran_env
  Implicit none

  ! Get size of real intrinsic
  Integer, parameter  :: sp = REAL32

  ! Declare a two dimentsional array
  Integer             :: arrName(90000, 4000)

  ! Declare variables to hold start and end time
  Real(kind=sp)       :: start_time, end_time
  
  ! Declare loop counters
  Integer  :: x, y
 
  ! Get the CPU time when the loop starts
  call cpu_time(start_time)

  ! Populate the array
  do x = 1, 90000
    do y = 1, 4000
      arrName(x, y) = x + y
    end do
  end do

  ! Get the CPU time when the loop ends
  call cpu_time(end_time)

  ! Print the time taken to traverse all the elements in the array.
  print *, "Time taken:"
  print "(f6.2)", end_time - start_time
  print *, "seconds"
  
End program
