class Pessoa
	attr_accessor :nome
	attr_accessor :idade
	
	# @nome = nil
	# @idade = nil

	# def nome=(nome)
	# 	@nome = nome
	# end

	# def nome
	# 	@nome
	# end

	# def idade=(idade)
	# 	@idade = idade
	# end

	# def idade
	# 	@idade
	# end

	def gritar(texto = "Grrr!")
		"Gritando... #{texto}"
	end
	def agradecer(texto = "Obrigado")
		texto
	end
end

##########################

x = Pessoa.new
x.nome = ("Yuri")
x.idade = (26)

y = Pessoa.new
y.nome = ("Bianca")
y.idade = (26)

puts x.nome
puts x.idade

puts y.nome
puts y.idade