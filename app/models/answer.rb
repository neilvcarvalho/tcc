class Answer < ApplicationRecord
  belongs_to :question

  before_save :set_order

  def set_order
    self.order ||= question.answers.maximum(:order).to_i + 1
  end
end
