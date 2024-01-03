require 'tty-cursor'
require 'tty-progressbar'

class Inicializacao
	def self.inicializando
		system('clear')

		bar = TTY::ProgressBar.new("Inicializando Hangman [:bar]", total: 50)
		50.times do
		  sleep(0.1)
		  bar.advance 
		end

		puts "Inicialização completa!"
		sleep 1

		system('clear')
	end
end