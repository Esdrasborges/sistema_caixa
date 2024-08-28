require_relative 'cliente'

def sistema_de_caixa
  puts "Bem vindo ao sistema de Caixa"

  print "Codigo do Cliente"
  codigo = gets.chomp

  print "Nome: "
  nome = gets.chomp

  print "Produto: "
  produto = gets.chomp

  print "CPF: "
  cpf = gets.chomp

  cliente = Cliente.new(codigo, nome, produto, cpf)

  puts "\nAnalizando CPF..."
  cliente.criar_login

  puts "\nDados do CLiente:"
  cliente.exibir_dados
  
end

sistema_de_caixa