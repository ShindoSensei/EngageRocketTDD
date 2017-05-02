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

  def test_two # Sort Array with 2 items (reversed order), return Array elements in asc order
    assert_equal([1,2], sort([2,1]))
  end

  def test_three #Sort Array with 3 items, return Array elements in asc order
    assert_equal([1,2,3], sort([1,2,3]))
    assert_equal([1,2,3], sort([2,1,3]))
    assert_equal([1,2,3], sort([1,3,2]))
  end

end
