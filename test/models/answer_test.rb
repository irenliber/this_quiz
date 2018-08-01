require 'test_helper'

class AnswerTest < ActiveSupport::TestCase
  test "should not save answer without text" do
    answer = Answer.new(question: Question.first)
    assert_not answer.save
  end

  test "should not save answer without text and question_id" do
    answer = Answer.new(text: 'First answer')
    assert_not answer.save
  end

  test "should save answer" do
    answer = Answer.new(question: Question.first, text: 'First answer')
    assert answer.save
  end
end
