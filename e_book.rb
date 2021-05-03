class EBook
  attr_reader :titulo, :ano_lancamento, :preco, :editora

  def initialize(titulo, preco, ano_lancamento, editora)
    @titulo = titulo
    @ano_lancamento = ano_lancamento
    @preco = calcula_preco(preco)
    @editora = editora
  end

  def matches?(query)
    %w[ebook digital].include? query
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
