Module my_module
  Implicit none
  ! Ensure that all declared items have scope restricted to this module only
  ! unless stated otherwise.
  Private

  ! Allow the 'add_vars' subroutine to be accessed from outside (public).
  Public   :: add_vars   

  ! These values are accessible within the module but not from outside (private).
  Integer  :: my_counter = 0

  ! A module can 'contain' multiple units, which can either be public or private.
  contains
    integer function add_vars(a, b)
      Implicit none

      ! Dummy arguments
      Integer, intent(in)  :: a
      Integer, intent(in)  :: b
      Integer              :: c

      ! Increment the access counter and print it out
      my_counter = my_counter + 1
      print *, 'Number of times function called: ', my_counter

      ! Add two values and return the result
      c = a + b

    end function
end module my_module
