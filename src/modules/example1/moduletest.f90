program moduletest
  ! Include functionality from the 'my_module' module
  Use my_module
  Implicit none

  ! Declare test integers
  Integer :: x, y, z

  ! Set one component of the addition to an arbitrary value
  y = 5

  ! Loop from 1 to 10, adding the index value to y each time and
  ! print out the result.
  do x = 1, 10
    z = add_vars(x, y)
    print *, 'z = ', z
  end do

end program
