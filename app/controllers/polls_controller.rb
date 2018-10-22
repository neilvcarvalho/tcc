class PollsController < ApplicationController
  def new
    @questions = Question.order(:order)
  end

  def create
    @attempt = Attempt.create_by_poll(params[:answers].to_unsafe_hash)
    redirect_to poll_url(id: @attempt.id)
  end

  def show
    @attempt = Attempt.find(params[:id])
  end
end
