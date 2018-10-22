class PopulaPerguntas < ActiveRecord::Migration[5.0]
  def change
    questions = [
      {
        title: "O quão importante para você é manter o seu capital em segurança?",
        answer_type: "single_answer",
        answers: [
          "Extremamente importante, dependo desse capital para despesas fixas ou de emergência.",
          "Considero importante, porém estaria disposto(a) a arriscar uma parte dele, em troca da possibilidade de rendimentos maiores.",
          "Pouquíssimo importante, não preciso do dinheiro investido para pagar contas ou me sustentar.",
        ]
      },
      {
        title: "Qual o prazo para realizar os seus objetivos financeiros?",
        answer_type: "single_answer",
        answers: [
          "1 a 2 anos",
          "5 anos",
          "10 anos",
        ]
      },
      {
        title: " Qual a sua expectativa de rentabilidade no curto prazo (1 a 2 anos)?",
        answer_type: "single_answer",
        answers: [
          "Espero um rendimento acima da poupança, correndo quase nenhum risco",
          "Quero ganhar o máximo possível, sem correr grandes riscos.",
          "Quero ganhar muito dinheiro em pouco tempo e para isso estou disposto a correr riscos!",
        ]
      },
      {
        title: "Qual o seu grau de conhecimento acerca do mercado?",
        answer_type: "single_answer",
        answers: [
          "Baixíssimo ou nenhum conhecimento. Nunca busquei informações sobre investimentos antes.",
          "Conheço um pouco do mercado, mas não tenho formação acadêmica nem trabalhei com investimentos.",
          "Alto. Já trabalhei/trabalho com investimentos ou possuo formação acadêmica na área financeira.",
        ]
      },
      {
        title: "Qual seu grau de instrução?",
        answer_type: "single_answer",
        answers: [
          "1° grau",
          "2° grau",
          "Superior",
          "Pós graduação / Mestrado / Doutorado",
        ]
      },
      {
        title: "Qual percentual de perda do capital investido causaria desconforto?",
        answer_type: "single_answer",
        answers: [
          "Qualquer perda",
          "Até 10%",
          "Entre 10% e 20 %",
          "Acima de 20%",
        ]
      },
      {
        title: "Quais das operações e produtos abaixo você conhece?",
        answer_type: "multiple_answers",
        answers: [
          "Poupanca",
          "Renda fixa",
          "Renda variável",
          "Fundos",
          "Derivativos",
        ]
      },
      {
        title: "Em que momento de sua vida você se encontra?",
        answer_type: "single_answer",
        answers: [
          "Preciso das minhas receitas e rendimentos para pagar despesas.",
          "Estou iniciando a construção do meu patrimônio.",
          "Já possuo meu patrimonio, porém tenho despesas elevadas.",
          "Já possuo um patrimônio consolidado.",
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
