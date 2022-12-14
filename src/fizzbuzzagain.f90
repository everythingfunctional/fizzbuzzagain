module fizzbuzzagain
  implicit none
  private

  public :: fizzbuzz
contains
  function fizzbuzz(number)
    integer, intent(in) :: number
    character (len=1) :: fizzbuzz
    if (number == 1) then
      fizzbuzz = "1"
    else
      fizzbuzz = "2"
    endif

  end function fizzbuzz

end module fizzbuzzagain
