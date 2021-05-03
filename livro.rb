require_relative 'produto'

class Livro
  include Produto

  def initialize(titulo, preco, ano_lancamento, possui_reimpressao, editora, possui_sobrecapa)
    @titulo = titulo
    @ano_lancamento = ano_lancamento
    @possui_reimpressao = possui_reimpressao
    @possui_sobrecapa = possui_sobrecapa
    @preco = calcula_preco(preco)
    @editora = editora
  end

  def matches?(query)
    %w[livro impresso].include? query
  end

  def possui_reimpressao?
    @possui_reimpressao
  end
end
