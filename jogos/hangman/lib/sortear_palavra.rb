class SortearPalavra
	def self.sortear
		v = []

		File.open(File.expand_path('../../palavras.txt', __FILE__), 'r') do |arq|
			while line = arq.gets
				v.push(line.to_s)
			end
		end

		v.sample
	end
end
