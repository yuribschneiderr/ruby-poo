class Inicializacao
	def self.inicializando
		print "Inicializando."
		
		4.times do |i|
			sleep 1
			print "."
		end

		puts " Inicialização completa!"
		sleep 1
	end
end