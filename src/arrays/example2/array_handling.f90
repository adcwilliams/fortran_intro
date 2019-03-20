Module array_handling
  Implicit none

  ! Make our function available from outside the module
  Public :: process_arr

  contains
    ! Function to demonstrate intrinsic functions that can be used
    ! with assumed shape arrays.
    Integer function process_arr(my_array)
      Implicit none
  
      ! Dummy argument to receive array as assumed shape
      Integer  :: my_array(:, :)
      Integer  :: z
  
      ! Because my_array is not just a memory location, there are intrinsic
      ! functions we can use to query it.
      print *, 'size of first dimension         = ', size(my_array, 1)
      print *, 'size of second dimension        = ', size(my_array, 2)
      print *, 'lower bound of first dimension  = ', lbound(my_array, 1)
      print *, 'upper bound of first dimension  = ', ubound(my_array, 1)
      print *, 'lower bound of second dimension = ', lbound(my_array, 2)
      print *, 'upper bound of second dimension = ', ubound(my_array, 2)
  
      ! Return an arbitrary value
      z = my_array(2, 5)
  
      return
    End function

End module
