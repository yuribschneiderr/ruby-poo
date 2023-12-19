class Calculadora
	def somar(n1, n2)
		n1 + n2
	end

	def subtrair(n1, n2)
		n1 - n2
	end
end

class CalculadoraFashion < Calculadora
	# Overriding (Sobrescrita de método)
	def somar(n1, n2)
		"A soma é: #{n1 + n2}"
	end
end

########################

c = Calculadora.new
puts c.somar(2, 3)
puts c.subtrair(4, 3)

cf = CalculadoraFashion.new
puts cf.somar(2,3)
puts cf.subtrair(6, 2)
