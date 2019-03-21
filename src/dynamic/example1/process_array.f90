Module process_array
  Implicit none

  Private

  Public :: proc

  Contains
    Subroutine proc(array_in, array_out)
      Implicit none

      ! Dummy arguments for passing allocatables in and out
      Integer, allocatable, intent(in)  :: array_in(:, :)
      Integer, allocatable, intent(out) :: array_out(:, :)

      ! Declare variables to hold the size of the returned array
      Integer   :: newsize_x, newsize_y
      Integer   :: x, y

      ! We don't know what the size of the array is but we can find out
      newsize_x = size(array_in, 1)
      newsize_y = size(array_in, 2)

      ! We'll need to allocate space for the returned array and assign
      ! the initial values to be equal to those passed in. Fortunately
      ! we can do this with a single statement.
      allocate(array_out, source=array_in)

      ! Modify the working array
      do y = 1, ubound(array_out, 2)
        do x = 1, ubound(array_out, 1)
          array_out(x, y) = 10000 - array_out(x, y)
        end do
      end do

    End subroutine

End module
