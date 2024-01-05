require_relative 'iniciando'
require_relative 'sortear_palavra'

class JogoDaForca
  attr_reader :palavra
  attr_accessor :chutes, :erros

  def initialize
    Inicializacao.inicializando
    @palavra = SortearPalavra.sortear
    @chutes = []
    @erros = 0
  end

  def palavra_mascarada
    resultado = ''
    palavra.split('').each do |letra|
      if chutes.include?(letra)
        resultado += letra.upcase
      else
        resultado += '_'
      end
    end
    resultado
  end

  def chutar(letra)
    chutes << letra
    self.erros = erros + 1 unless palavra.include?(letra)
  end

  def venceu?
    palavra.split('').all? { |letra| chutes.include?(letra) }
  end

  def perdeu?
    erros >= 7
  end

  def jogando?
    !venceu? && !perdeu?
  end

  def desenho_forca
    case erros
      when 1
        puts "\nVocê errou seu chute, tente de novo.."
        puts "  _______"
        puts " |/      |"
        puts " |      (_)"
        puts " |"
        puts " |"
        puts " |"
        puts " |"
        puts "_|___"
      when 2
        puts "\nVocê errou seu chute, tente de novo.."
        puts "  _______"
        puts " |/      |"
        puts " |      (_)"
        puts " |       |"
        puts " |"
        puts " |"
        puts " |"
        puts "_|___"
      when 3
        puts "\nVocê errou seu chute, tente de novo.."
        puts "  _______"
        puts " |/      |"
        puts " |      (_)"
        puts " |      /|"
        puts " |"
        puts " |"
        puts " |"
        puts "_|___"
      when 4
        puts "\nVocê errou seu chute, tente de novo.."
        puts "  _______"
        puts " |/      |"
        puts " |      (_)"
        puts " |      /|/"
        puts " |"
        puts " |"
        puts " |"
        puts "_|___"
      when 5
        puts "\nVocê errou seu chute, tente de novo.."
        puts "  _______"
        puts " |/      |"
        puts " |      (_)"
        puts " |      /|/"
        puts " |       |"
        puts " |"
        puts " |"
        puts "_|___"
      when 6
        puts "\nVocê errou seu chute, tente de novo.."        
        puts "  _______"
        puts " |/      |"
        puts " |      (_)"
        puts " |      /|/"
        puts " |       |"
        puts " |      /"
        puts " |"
        puts "_|___"
        when 7
        puts "\nVocê errou seu chute, acabou enforcado."          
        puts "  _______"
        puts " |/      |"
        puts " |      (_)"
        puts " |      /|/"
        puts " |       |"
        puts " |      //"
        puts " |"
        puts "_|___"
    end
  end
end
