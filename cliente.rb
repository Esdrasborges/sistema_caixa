
require 'cpf_cnpj'

class Cliente
  attr_accessor :codigo, :nome, :produto, :cpf, :login

  def initialize(codigo, nome, produto, cpf)
    @codigo = codigo
    @nome = nome
    @produto = produto
    @cpf = cpf 
    @login = nil
  end

  def cpf_valido?
    CPF.valid?(@cpf)
  end

  def criar_login
    if cpf_valido?
      @login = "#{@nome.downcase.gsub(" ","_")}_#{rand(1000..9999)}"
      puts "Login criado com sucesso: #{@login}"
    else
      puts "CPF invalido. Não foi possivel criar o login"
    end
  end

  def exibir_dados
    puts "Codigo do Cliente: #{@codigo}"
    puts "Nome do Cliente: #{@nome}"
    puts "Produto: #{@produto}"
    puts "CPF: #{cpf}"
    puts "Login: #{@login ? @login: 'Nenhum login foi criado'}"
  end
end
