require 'test_helper'

class AnswersControllerTest < ActionDispatch::IntegrationTest
  test "calculation results are different for different input parameters" do
    answer1 = Answer.create(numbers: 1)
    answer2 = Answer.create(numbers: 3)

    result1 = answer1.decode_array
    result2 = answer2.decode_array

    assert_not_equal result1, result2
  end
end
