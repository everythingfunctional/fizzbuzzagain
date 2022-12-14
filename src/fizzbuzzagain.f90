module fizzbuzzagain
  implicit none
  private

  public :: fizzbuzz
contains
  function fizzbuzz(number)
    integer, intent(in) :: number
    character (len=:), allocatable :: fizzbuzz
    if (number == 1) then
      fizzbuzz = "1"
    else if (number == 2) then
      fizzbuzz = "2"
    else
      fizzbuzz = "fizz"
    endif

  end function fizzbuzz

end module fizzbuzzagain
