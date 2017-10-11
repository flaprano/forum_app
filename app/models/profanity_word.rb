class ProfanityWord
  include Mongoid::Document
  field :word, type: String
  field :regex, type: String

  def self.generate_regex(word)
    dictionary = { 'a' => '(a|@)+', 'e' => '(e|3)+', 'i' => '(i|1)+', 'o' => '(o|0)+', 'u' => '(u|ü)+' }
    regex = word.dup
    dictionary.each { |key, value| regex.gsub!(key, value) if regex.include?(key) }
    regex
  end
end
