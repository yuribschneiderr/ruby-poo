class Pessoa
	attr_accessor :nome
	attr_accessor :idade

	def initialize(nome, idade)
		@nome = nome
		@idade = idade
	end

	def gritar(texto = "Grrr!")
		"Gritando... #{texto}"
	end

	def agradecer(texto = "Obrigado")
		texto
	end
end

##########################

x = Pessoa.new("Yuri", 26)
y = Pessoa.new("Bianca", 26)

puts x.nome
puts x.idade

puts y.nome
puts y.idade