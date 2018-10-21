class PopulaPerguntas < ActiveRecord::Migration[5.0]
  def change
    questions = [
      {
        title: "Pergunta com uma resposta",
        answer_type: "single_answer",
        answers: [
          "Resposta 1",
          "Resposta 2",
          "Resposta 3",
          "Resposta 4",
        ]
      },
      {
        title: "Pergunta com várias respostas",
        answer_type: "multiple_answers",
        answers: [
          "Resposta 1",
          "Resposta 2",
          "Resposta 3",
          "Resposta 4",
        ]
      }
    ]

    questions.each do |question|
      q = Question.create(title: question[:title], answer_type: question[:answer_type])

      question[:answers].each do |answer|
        q.answers.create(text: answer)
      end
    end
  end
end
