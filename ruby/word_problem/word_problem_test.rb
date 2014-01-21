require 'minitest/autorun'
require 'minitest/pride'
require_relative 'word_problem'

class WordProblemTest < Minitest::Test
  def test_add_1
    # skip
    assert_equal 2, WordProblem.new('What is 1 plus 1?').answer
  end

  def test_add_2
    # skip
    assert_equal 55, WordProblem.new('What is 53 plus 2?').answer
  end

  def test_add_negative_numbers
    # skip
    assert_equal(-11, WordProblem.new('What is -1 plus -10?').answer)
  end

  def test_add_more_digits
    # skip
    assert_equal 45801, WordProblem.new('What is 123 plus 45678?').answer
  end

  def test_subtract
    # skip
    assert_equal 16, WordProblem.new('What is 4 minus -12?').answer
  end

  def test_multiply
    # skip
    assert_equal(-75, WordProblem.new('What is -3 multiplied by 25?').answer)
  end

  def test_divide
    # skip
    assert_equal(-11, WordProblem.new('What is 33 divided by -3?').answer)
  end

  def test_add_twice
    # skip
    question = 'What is 1 plus 1 plus 1?'
    assert_equal 3, WordProblem.new(question).answer
  end

  def test_add_then_subtract
    # skip
    question = 'What is 1 plus 5 minus -2?'
    assert_equal 8, WordProblem.new(question).answer
  end

  def test_subtract_twice
    # skip
    question = 'What is 20 minus 4 minus 13?'
    assert_equal 3, WordProblem.new(question).answer
  end

  def test_subtract_then_add
    # skip
    question = 'What is 17 minus 6 plus 3?'
    assert_equal 14, WordProblem.new(question).answer
  end

  def test_multiply_twice
    # skip
    question = 'What is 2 multiplied by -2 multiplied by 3?'
    assert_equal(-12, WordProblem.new(question).answer)
  end

  def test_add_then_multiply
    # skip
    question = 'What is -3 plus 7 multiplied by -2?'
    assert_equal(-8, WordProblem.new(question).answer)
  end

  def test_divide_twice
    # skip
    question = 'What is -12 divided by 2 divided by -3?'
    assert_equal 2, WordProblem.new(question).answer
  end

  def test_too_advanced
    # skip
    assert_raises ArgumentError do
      WordProblem.new('What is 53 cubed?').answer
    end
  end

  def test_irrelevant
    # skip
    assert_raises ArgumentError do
      WordProblem.new('Who is the president of the United States?').answer
    end
  end

  def test_can_set_precedence_for_simple_phrases
    # skip
    assert_equal 2, WordProblem.new('What is 1 plus 1?', true).answer
    assert_equal 2, WordProblem.new('What is 3 minus 1?', true).answer
    assert_equal 6, WordProblem.new('What is 2 multiplied by 3?', true).answer
    assert_equal 3, WordProblem.new('What is 6 divided by 2?', true).answer
  end

  def test_can_set_precedence_for_more_operations
    # skip
    assert_equal 3, WordProblem.new('What is 1 plus 1 plus 1?', true).answer
    assert_equal -1, WordProblem.new('What is 1 minus 1 minus 1?', true).answer
    assert_equal 18, WordProblem.new('What is 2 multiplied by 3 multiplied by 3?', true).answer
    assert_equal 2, WordProblem.new('What is 20 divided by 5 divided by 2?', true).answer
    assert_equal 8, WordProblem.new('What is 20 divided by 5 multiplied by 2?', true).answer
  end

  def test_can_set_order_of_operations_with_multiplication
    # skip
    assert_equal 11, WordProblem.new('What is 1 minus 5 multiplied by -2?', true).answer
    assert_equal -17, WordProblem.new('What is -3 plus 7 multiplied by -2?', true).answer
  end

  def test_can_set_order_of_operations_with_division
    # skip
    assert_equal -4, WordProblem.new('What is 1 plus 10 divided by -2?', true).answer
    assert_equal 6, WordProblem.new('What is 1 plus 10 divided by 2?', true).answer
  end

end
