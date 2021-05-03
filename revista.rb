class Revista
  attr_reader :titulo, :ano_lancamento, :preco, :editora

  def initialize(titulo, preco, ano_lancamento, possui_reimpressao, editora, numero)
    @titulo = titulo
    @ano_lancamento = ano_lancamento
    @possui_reimpressao = possui_reimpressao
    @numero = numero
    @preco = calcula_preco(preco)
    @editora = editora
  end

  def matches?(query)
    %w[revista impresso].include? query
  end

  def possui_reimpressao?
    @possui_reimpressao
  end

  def to_csv
    "#{@titulo},#{@ano_lancamento},#{@preco}"
  end

  private

  def calcula_preco(base)
    if @ano_lancamento < 2006
      if @possui_reimpressao
        base * 0.9
      else
        base * 0.95
      end
    elsif @ano_lancamento <= 2010
      base * 0.96
    else
      base
    end
  end
end
