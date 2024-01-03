require_relative 'lib/hangman'

jogo = JogoDaForca.new

while jogo.jogando?
  puts "Digite uma letra:"
  puts jogo.palavra_mascarada
  chute = gets.chomp
  jogo.chutar(chute)
  jogo.desenho_forca
end

if jogo.venceu?
  puts 'Parabéns, você venceu!'
else
  puts 'Que pena, você perdeu.'
end
