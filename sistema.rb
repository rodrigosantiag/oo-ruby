require_relative 'livro'
require_relative 'estoque'

def livro_para_newsletter(livro)
  if livro.ano_lancamento < 1999
    puts 'Newsletter/Liquidação'
    puts livro.titulo
    puts livro.preco
    puts livro.possui_reimpressao?
  end
end

class Conversor
  def string_para_alfanumerico(nome)
    nome.gsub /[^\w\s]/,''
  end
end

algoritmos = Livro.new('Algoritmos', 100, 1998, true, '')
arquitetura = Livro.new('Introdução a Arquitetura e Design de Software', 70, 2011, true, '')
programmer = Livro.new('The Pragmatic Programmer', 100, 1999, true, '')
ruby = Livro.new('Programming Ruby', 100, 2004, true, '')

estoque = Estoque.new
estoque << algoritmos << algoritmos << ruby << programmer << arquitetura << ruby << ruby
estoque.vende ruby
estoque.vende algoritmos
estoque.vende algoritmos

puts estoque.livro_que_mais_vendeu_por_titulo.titulo
