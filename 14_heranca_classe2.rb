class Funcionario
	attr_accessor :nome, :cpf, :salario
end

class Gerente < Funcionario
	attr_accessor :senha, :tempo_empresa
end

f = Funcionario.new
f.nome = "Funcionário"
f.cpf = 11111111111
f.salario = 1234.5

puts f.nome
puts f.cpf
puts f.salario

g = Gerente.new
g.nome = "Gerente"
g.senha = "1a23"
g.tempo_empresa = 4

puts g.nome
puts g.senha
puts g.tempo_empresa 
