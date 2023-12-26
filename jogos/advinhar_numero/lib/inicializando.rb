require 'tty-cursor'
require 'tty-progressbar'

class Inicializacao
	def self.inicializando
		system('clear')

		bar = TTY::ProgressBar.new("Inicializando [:bar]", total: 50)
		50.times do
		  sleep(0.1)
		  bar.advance  # by default increases by 1
		end

		# cursor = TTY::Cursor
		# print cursor.move_to(20, 10)

		# print "Inicializando."
		
		# 4.times do |i|
		# 	sleep 1
		# 	print "."
		# end

		puts "Inicialização completa!"
		sleep 1

		system('clear')
	end
end