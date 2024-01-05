class SortearPalavra
	def self.sortear
		v = []

		File.open(File.expand_path('../../palavras.txt', __FILE__), 'r') do |arq|
			while line = arq.gets
				v.push(line.chomp)
			end
		end

		v.sample
	end
end