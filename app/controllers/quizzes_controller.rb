class QuizzesController < ApplicationController
  def index
    render :json => Quiz.all
  end

  def show
    quiz = Quiz.find(params[:id])
    render :json => quiz.to_json(:include => {:questions => {:include => :answers}})
  end
end
