class Livro
  attr_reader :titulo, :ano_lancamento, :preco

  def initialize(titulo, preco, ano_lancamento)
    @titulo = titulo
    @ano_lancamento = ano_lancamento
    @preco = calcula_preco(preco)
  end

  private

  def calcula_preco(base)
    @ano_lancamento < 2000 ? base *= 0.7 : base
  end
end

def livro_para_newsletter(livro)
  if livro.ano_lancamento < 1999
    puts 'Newsletter/Liquidação'
    puts livro.titulo
    puts livro.preco
  end
end

algoritmos = Livro.new('Algoritmos', 100, 1998)

livro_para_newsletter(algoritmos)
