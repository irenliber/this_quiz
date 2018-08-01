require 'test_helper'

class QuestionTest < ActiveSupport::TestCase
  test "should not save question without text" do
    question = Question.new(quiz: Quiz.first)
    assert_not question.save
  end

  test "should not save question without quiz_id" do
    question = Question.new(text: 'First question')
    assert_not question.save
  end
end
