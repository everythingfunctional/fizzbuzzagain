module fizzbuzz_test
    use fizzbuzzagain, only: fizzbuzz
    use veggies, only: result_t, test_item_t, describe, it, assert_equals

    implicit none
    private
    public :: test_fizzbuzz
contains
    function test_fizzbuzz() result(tests)
        type(test_item_t) :: tests

        tests = describe( &
                "fizzbuzz", &
                [ describe( &
                    "for normal numbers", &
                    [ it("returns that number as a string", check_normal_numbers) &
                    ]) &
                ])
    end function

    function check_normal_numbers() result(result_)
        type(result_t) :: result_

        result_ = assert_equals("1", fizzbuzz(1))
    end function
end module
