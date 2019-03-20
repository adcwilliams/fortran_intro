Program cars
  Use my_types
  Use process
  Implicit none

  ! Declare some objects of type 'car'
  Type (car)  :: freshcar, updatedcar

  ! Initialise the new car
  freshcar = car(colour='White', name='My New Car', doors=3, seats=2, age=1)

  ! 'Process' the car
  call processcar(freshcar, updatedcar)

  ! Print the details of the car after processing
  print *, 'Car after processing:'
  print *, 'name   = ', updatedcar%name
  print *, 'colour = ', updatedcar%colour
  print *, 'doors  = ', updatedcar%doors
  print *, 'seats  = ', updatedcar%seats
  print *, 'age    = ', updatedcar%age

End program
