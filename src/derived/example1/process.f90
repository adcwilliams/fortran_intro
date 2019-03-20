Module process
  Use my_types

  ! Make the subroutine publicly available
  Public :: processcar

  Contains
    Subroutine processcar(inputcar, outputcar)
      Implicit none
      
      ! Dummy arguments. We receive one object and return another
      ! of the same type.
      Type(car), intent(in)  :: inputcar
      Type(car), intent(out) :: outputcar

      ! Since inputcar is intent(in), we need to make a copy to give
      ! us the initial conditions for the returned object
      outputcar = inputcar

      ! Update the object
      outputcar%name   = 'My Old Car'
      outputcar%colour = 'Grey'
      outputcar%doors  = 2
      outputcar%seats  = 1
      outputcar%age    = 10

    End subroutine

End module
