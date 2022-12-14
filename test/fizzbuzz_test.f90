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
                , describe( &
                    "for numbers divisible by 3", &
                    [ it("returns 'fizz'", check_divisible_by_three) &
                    ]) &
                , describe( &
                    "for numbers divisible by 5", &
                    [ it("returns 'buzz'", check_divisible_by_five) &
                    ]) &
                , describe( &
                    "for numbers divisible by 5 and 3", &
                    [ it("returns 'fizzbuzz'", check_divisible_by_fifteen) &
                    ]) &
                ])
    end function

    function check_normal_numbers() result(result_)
        type(result_t) :: result_

        result_ = &
                assert_equals("1", fizzbuzz(1)) &
                .and.assert_equals("2", fizzbuzz(2))
    end function

    function check_divisible_by_three() result(result_)
        type(result_t) :: result_

        result_ = &
                assert_equals("fizz", fizzbuzz(3)) &
                .and. assert_equals("fizz", fizzbuzz(6))
    end function

    function check_divisible_by_five() result(result_)
        type(result_t) :: result_

        result_ = &
                assert_equals("buzz", fizzbuzz(5)) &
                .and. assert_equals("buzz", fizzbuzz(10))
    end function

    function check_divisible_by_fifteen() result(result_)
        type(result_t) :: result_

        result_ = &
                assert_equals("fizzbuzz", fizzbuzz(15)) &
                .and.assert_equals("fizzbuzz", fizzbuzz(30))
    end function
end module
