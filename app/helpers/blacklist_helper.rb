module BlacklistHelper
  def check_word

palavra = 'cachorro'
expressao = ''
letras = ['a','@', 'e','3','i','1','o','0','u','u']

palavra.each_char do |letra|
  if letras.include?(letra)
    if (letra == 'a' || letra == '@')
      expressao += '(a|@)+'
    elsif (letra == 'e' || letra == '3')
      expressao += '(e|3)+'
    elsif (letra == 'i' || letra == '1')
      expressao += '(i|1)+'
    elsif (letra == 'o' || letra == '0')
      expressao += '(o|0)+'
    elsif (letra == 'u' || letra == '')
      expressao += '(u|ü)+'
    end
  else
    expressao += "#{letra}"
  end
end

str = 'a nave virou o cAchoRro e o c@chorro morreu'
palavras = str.gsub(/\s+/m, ' ').strip.split(" ")

regex = Regexp.new(expressao, true)

palavras.each do |palavra|
  if regex.match(palavra)
    str.gsub!(palavra, ''.rjust(palavra.length, 'X'))
  end
end
puts str
  end
end
