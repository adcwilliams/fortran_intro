Program assumed_shape
  Use array_handling
  Implicit none
  
  ! Declare an array to store our data
  Integer           :: data_store(20, 30)
  
  ! Declare return value from our processing
  Integer           :: my_result
  
  ! Array indices
  Integer x, y
  
  do y = 1, 30
    do x = 1, 20
      data_store(x, y) = (x*100) + y
    end do
  end do
  
  ! Process this array in some way
  my_result = process_arr(data_store)
  
  ! Print out the result
  print *, 'My result =', my_result

End program
