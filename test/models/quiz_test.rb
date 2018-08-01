require 'test_helper'

class QuizTest < ActiveSupport::TestCase
  test "quiz has several questions" do
    questions = Quiz.first.questions
    assert_equal 3, questions.count
    assert_kind_of Question, questions.first
  end

  test "should not save quiz without title and description" do
    quiz = Quiz.new
    assert_not quiz.save
  end
end