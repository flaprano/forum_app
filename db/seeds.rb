# ruby encoding: utf-8

word = 'arma'
regex = ProfanityWord.generate_regex word
ProfanityWord.create(word: word, regex: regex)

word = 'baralho'
regex = ProfanityWord.generate_regex word
ProfanityWord.create(word: word, regex: regex)

word = 'cavalo'
regex = ProfanityWord.generate_regex word
ProfanityWord.create(word: word, regex: regex)

word = 'faca'
regex = ProfanityWord.generate_regex word
ProfanityWord.create(word: word, regex: regex)

20.times do |i|
  Post.create(title: "Tópico #{i}", message: "Mensagem do tópico #{i}")
end