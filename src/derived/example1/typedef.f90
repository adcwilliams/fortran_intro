Module my_types
  Implicit none

  ! Make the car type publicly available
  Public :: car

  ! Define a derived type describing a car
  Type car
    Character(15)  :: colour
    Character(15)  :: name
    Integer        :: doors
    Integer        :: seats
    Integer        :: age
  End type car

End module
