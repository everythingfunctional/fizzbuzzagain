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
    else if (modulo(number,3) == 0 .and..not.(modulo(number,5) == 0) ) then
      fizzbuzz = "fizz"
    else if (modulo(number,5) == 0 .and..not.(modulo(number,3) == 0) ) then
      fizzbuzz = "buzz"
    else if (modulo(number,15) == 0 ) then
      fizzbuzz = "fizzbuzz"
    endif

  end function fizzbuzz

end module fizzbuzzagain
