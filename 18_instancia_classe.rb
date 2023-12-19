class Teste
	def ola # Método de instância
			"Olá!"
	end

	def self.hello # Método de classe
		"Hello!"
	end
end

# t = teste.new # Instância -> Criação de objeto para usar
# puts t.ola

puts Teste.hello # Não precisa da instância/referência ao objeto