module PollsHelper
  def nome_perfil(cluster)
    if cluster == 0
      "Pouco Arrojado"
    elsif cluster == 1
      "Moderado"
    elsif cluster == 2
      "Conservador"
    else
      "Muito Conversador"
    end
  end
end
