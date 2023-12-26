require_relative 'inicializando'
require_relative 'sortear_numero'

class AdivinharNumero
	attr_reader :numero
	attr_reader :venceu

	def initialize
		Inicializacao.inicializando
		@numero = SortearNumero.sortear
		@venceu = false
	end

	def tentar_adivinhar(numero = 0)
		if numero == @numero
			@venceu = true
			return "Você venceu!"
		elsif numero > @numero
			return "O número informado é alto.."
		else
			return "O número informado é baixo.."
		end
	end
end