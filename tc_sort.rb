require 'test/unit'

class TestSort < Test::Unit::TestCase
  def sort(arr) #Sorting Algo to be tested
    # return []  ##to fix failing test_empty, I simply returned an empty array []
    # return arr  ##to fix failing test_empty & test_one, returned arr itself instead of []
    return arr.sort ##to fix failing test_empty,test_one & test_two, returned arr.sort instead of arr. This managed to pass test_three at the same time. All assertions passed
  end

  def test_empty # Sort an Empty Array, result should be empty
    assert_equal([], sort([]))
  end

  def test_one # Sort Array with 1 item, return the original array
    assert_equal([1], sort([1]))
  end

  def test_two # Sort Array with 2 items (reversed order), return correct order array
    assert_equal([1,2], sort([2,1]))
  end

  def test_three #Sort Array with 3 items, return Array elements in asc order
    assert_equal([1,2,3], sort([1,2,3]))  #Already correct
    assert_equal([1,2,3], sort([2,1,3]))  #1st & 2nd swap (adjacent, One move)
    assert_equal([1,2,3], sort([1,3,2]))  #2nd & 3rd swap (adjacent, One move)
    #3 more test cases below to test robustness of sort algo for non-adjacent and multiple movements within array.
    assert_equal([1,2,3], sort([3,2,1]))  #Additional test, 1st & 3rd swap (non-adj, One move)
    assert_equal([1,2,3], sort([3,1,2]))  #Additional test, 1st & 2nd swap, then 2nd & 3rd swap (multiple moves).
    assert_equal([1,2,3], sort([2,3,1]))  #Additional test, 2nd & 3rd swap, then 1st & 2nd swap (multiple moves)
  end
    #No need to test >3 element array, as above tests, if passed, show that sort algo capable of adjacent, non-adjacent, one move or multiple movement swaps.

    #However, it would be good to also test that input argument is clean.
    #Example,
    #1) Test that arr is indeed an array
    #2) Test that array elements are all integers for comparison to be possible
end
