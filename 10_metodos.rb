class Pessoa
	def gritar(texto = "Grrrrrhhhh")
		return texto
	end

	def agradecer(texto = "Obrigado")
		return texto
	end
end

#################

obj1 = Pessoa.new
puts obj1.gritar
puts obj1.agradecer