class SortearNumero
	def self.sortear
		# Random.rand(1..10) - para sorear um número de 1 a 10
		v = []

		File.open(File.expand_path('../../numeros.txt', __FILE__), 'r') do |arq|
			while line = arq.gets
				v.push(line.to_i)
			end
		end

		v.sample
	end

end

end

