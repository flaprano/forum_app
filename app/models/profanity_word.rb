class ProfanityWord
  include Mongoid::Document
  field :word, type: String
  field :regex, type: String
  
  DICTIONARY = {'a' => '(a|@)+', 'e' => '(e|3)+', 'i' => '(i|1)+', 'o' => '(o|0)+', 'u' => '(u|ü)+'}
  
  def self.generate_regex(word)
    regex = word.dup
    DICTIONARY.each { |key, value| 
      if regex.include?(key) 
        regex.gsub!(key, value) 
      end 
    }
    regex
  end
end
