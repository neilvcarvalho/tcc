class PollsController < ApplicationController
  def new
    @questions = Question.order(:order)
  end

  def create
    @attempt = Attempt.create_by_poll(params[:answers].to_unsafe_hash)
  end
end
