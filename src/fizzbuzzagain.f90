module fizzbuzzagain
  use iso_varying_string, only: varying_string, var_str, assignment(=)
  use strff, only: to_string
  implicit none
  private

  public :: fizzbuzz
contains
  function fizzbuzz(number)
    integer, intent(in) :: number
    type(varying_string) :: fizzbuzz
    if (modulo(number,3) == 0 .and..not.(modulo(number,5) == 0) ) then
      fizzbuzz = "fizz"
    else if (modulo(number,5) == 0 .and..not.(modulo(number,3) == 0) ) then
      fizzbuzz = "buzz"
    else if (modulo(number,15) == 0 ) then
      fizzbuzz = "fizzbuzz"
    else
      fizzbuzz = to_string(number)
    endif

  end function fizzbuzz

end module fizzbuzzagain
