require_relative 'pagamento.rb'

include Pagamento

p = Pagamento::Visa.new # Trabalhando com Classes
puts p.pagando

puts Pagamento::PI # Trabalhando com Constantes

puts "Digite a bandeira do cartão:"
b = gets.chomp

puts "Digite o número do cartão:"
n = gets.chomp

puts "Digite o valor da compra:"
v = gets.chomp

puts pagar(b, n, v) # Trabalhando com Métodos