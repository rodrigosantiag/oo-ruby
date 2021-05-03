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

algoritmos = Livro.new('Algoritmos', 100, 1998, true, '', 'livro')
arquitetura = Livro.new('Introdução a Arquitetura e Design de Software', 70, 2011, true, '', 'livro')
programmer = Livro.new('The Pragmatic Programmer', 100, 1999, true, '', 'livro')
ruby = Livro.new('Programming Ruby', 100, 2004, true, '', 'livro')
revistona = Livro.new('Revista de Ruby', 10, 2012, true, 'Revistas', 'revista')
online_arquitetura = Livro.new('Introdução a Arquitetura e Design de Software', 50, 2012, true, '', 'ebook')

estoque = Estoque.new
estoque << algoritmos << algoritmos << ruby << programmer << arquitetura << ruby << ruby << revistona << revistona << online_arquitetura
estoque.vende ruby
estoque.vende algoritmos
estoque.vende algoritmos
estoque.vende revistona
estoque.vende online_arquitetura

puts estoque.livro_que_mais_vendeu_por_titulo.titulo
puts estoque.revista_que_mais_vendeu_por_titulo.titulo
puts estoque.ebook_que_mais_vendeu_por_titulo.titulo
puts estoque.respond_to? :ebook_que_mais_vendeu_por_titulo
