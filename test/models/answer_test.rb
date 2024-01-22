require 'test_helper'

class AnswerTest < ActiveSupport::TestCase
  test "should create and find an answer" do
    answer = Answer.create(numbers: 1, right_numbers: "The right numbers")

    assert answer.persisted?

    found_answer = Answer.find_by(numbers: 1)

    assert_equal answer.id, found_answer.id
    assert_equal answer.numbers, found_answer.numbers
    assert_equal answer.right_numbers, found_answer.right_numbers
  end
  
  test "should not allow duplicate numbers" do
    Answer.create(numbers: 1, right_numbers: "The right numbers")
    duplicate_answer = Answer.new(numbers: 1, right_numbers: "Another set of right numbers")
    assert_not duplicate_answer.save, "Saved duplicate answer with the same numbers"
  end

end
