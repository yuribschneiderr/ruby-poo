require_relative 'lib/hangman'

jogo = JogoDaForca.new

puts "Bem vindo ao Jogo da Forca!"
sleep 1
puts "Sua palavra tem #{jogo.palavra.size} letras.\n"
sleep 1
puts "\n"

while jogo.jogando?
  puts "\nDigite uma letra:\n\n"
  puts jogo.palavra_mascarada
  chute = gets.chomp
  jogo.chutar(chute)
  jogo.desenho_forca
end

if jogo.venceu?
  puts "\nParabéns, você venceu o jogo!"
  puts "\nA palavra é #{jogo.palavra.upcase} e você acertou!"
else
  puts "\nQue pena, você perdeu..."
  puts "\nA palavra era: #{jogo.palavra.upcase}"
end
