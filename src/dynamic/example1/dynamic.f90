Program dynamic
  use process_array
  Implicit none

  ! Declare allocatable arrays to hold our data
  Integer, allocatable  :: old_data(:, :), new_data(:, :)

  ! Store original array extents and index counters
  Integer               :: x_size, y_size
  Integer               :: x, y

  ! Set the size of the original array
  x_size = 4
  y_size = 6

  ! Allocate the original array. We don't need to check if it's been
  ! allocated if we know for sure it can't have been.
  allocate(old_data(x_size, y_size))

  ! Give our array some values
  do y = 1, ubound(old_data, 2)
    do x = 1, ubound(old_data, 1)
      old_data(x, y) = 100*x + y
    end do
  end do

  ! Send our array to a subroutine for processing, along with the
  ! as-yet unallocated array for receiving our results
  call proc(old_data, new_data)

  ! Get an example value from our processed array
  print *, 'Element (2, 4) = ', new_data(2, 4)

End program
