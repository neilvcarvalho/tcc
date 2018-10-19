class Answer < ApplicationRecord
  belongs_to :question

  before_save :set_default_values

  def set_default_values
    self.order ||= question.answers.maximum(:order).to_i + 1

    if question.single_answer?
      self.value ||= order
    else
      self.value ||= 10
    end
  end
end
