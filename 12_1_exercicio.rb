class Cachorro
	attr_accessor :nome
	attr_reader :raca

	def initialize(nome)
		@nome = nome
		@raca = "Vira-lata"
	end

	def latir(latido = "au au!")
		latido
	end
end

cachorro1 = Cachorro.new("Belinha")
cachorro2 = Cachorro.new("Billy")

puts cachorro1.nome
puts cachorro1.raca
puts cachorro1.latir

puts "-------------"

puts cachorro2.nome
puts cachorro2.raca
puts cachorro2.latir

puts "-------------"

class Papagaio
	attr_accessor :nome
	attr_accessor :idade

	def initialize(nome, idade)
		@nome = nome
		@idade = idade
	end

	def repetir_frase(frase = "curupaco!")
		frase
	end
end

papa1 = Papagaio.new("Loro", 5)
papa2 = Papagaio.new("Liro", 7)

puts papa1.nome
puts papa1.idade
puts papa1.repetir_frase("Loro quer biscoito")

puts "-------------"

puts papa2.nome
puts papa2.idade
puts papa2.repetir_frase
