puts "Digite sua idade: "
v1 = gets.chomp.to_i # Facilita a leitura e resume o script
v2 = v1 + 1 # Usando .to_s para o número, haveira concatenação
			# Poderia ser v1.to_i
puts "Sua idade ano que vem será: #{v2}"
