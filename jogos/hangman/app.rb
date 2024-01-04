require_relative 'lib/hangman'

jogo = JogoDaForca.new

puts "Bem vindo ao Jogo da Forca!"
sleep 1
puts "Sua palavra tem #{jogo.palavra.size} letras.\n"
sleep 1
puts "\n"

while jogo.jogando?
  puts "Digite uma letra:\n\n"
  puts jogo.palavra_mascarada
  chute = gets.chomp
  jogo.chutar(chute)
  jogo.desenho_forca
end

if jogo.venceu?
  puts 'Parabéns, você venceu o jogo!'
else
  puts 'Que pena, você perdeu...'
  puts "A palavra era: #{jogo.palavra.upcase}"
end
