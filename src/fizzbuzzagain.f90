module fizzbuzzagain
  implicit none
  private

  public :: fizzbuzz
contains
  function fizzbuzz(number)
    integer, intent(in) :: number
    character (len=1) :: fizzbuzz
    fizzbuzz = "1"
  end function fizzbuzz

end module fizzbuzzagain
