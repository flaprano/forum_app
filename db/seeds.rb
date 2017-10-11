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
  topic = Post.create(title: "Tópico #{i}", message: "Mensagem do tópico #{i}")
  #topic.children.create(title: topic.title, message: "Comentário do tópico #{i}. Podemos comprar um cav@lo.")
  #topic.children.create(title: topic.title, message: "Comentário do tópico #{i}. Podemos comprar um baralho e talvez uma f@ac@.")
  #topic.children.create(title: topic.title, message: "Comentário do tópico #{i}. Podemos comprar uma faca.") 
  #topic.children.create(title: topic.title, message: "Comentário do tópico #{i}. Podemos comprar uma @rm@.")
end

topic = Post.all[0]

#topic.children.each do |comment|
#  comment.children.create(title: comment.title, message: "Resposta do comentário. Podemos comprar um cav@lo.")
#  comment.children.create(title: comment.title, message: "Resposta do comentário. Podemos comprar um baralho e talvez uma f@ac@.")
#  comment.children.create(title: comment.title, message: "Resposta do comentário. Podemos comprar uma faca.") 
#  comment.children.create(title: comment.title, message: "Resposta do comentário. Podemos comprar uma @rm@.")
#end