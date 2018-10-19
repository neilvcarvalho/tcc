class Question < ApplicationRecord
  has_many :answers

  enum answer_type: [:single_answer, :multiple_answers]

  before_save :set_order

  def set_order
    self.order ||= Question.maximum(:order).to_i + 1
  end
end
