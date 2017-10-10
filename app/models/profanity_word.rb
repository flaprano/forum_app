class ProfanityWord
  include Mongoid::Document
  field :word, type: String
  field :regex, type: String
  
  hash = [{a => '(a|@)+'}, {@ => '(a|@)+'}]
  DICTIONARY = ['a','@', 'e','3','i','1','o','0','u','ü']
  
  def self.generate_regex(word)
    #regex = ''
    
    if word.include?('a') || word.include?('@')
      word.gsub!('a', '(a|@)+')
    end
    
    ca
    c(a|@)+
    
    DICTIONARY.each do |character|
      
    end
      
    if word.include?('a') || word.include?('@')
      word.gsub!('a', '(a|@)+')
    end
      
    if word.include?('a') || word.include?('@')
      word.gsub!('a', '(a|@)+')
    end
    
    if word.include?('a') || word.include?('@')
      word.gsub!('a', '(a|@)+')
    end
      
    if word.include?('a') || word.include?('@')
      word.gsub!('a', '(a|@)+')
   
    word.gsub!
    
    word.sub!('a', '(a|@)+').sub!('a', '(a|@)+')
    word.sub!('e', '(e|3)+').sub!('3', '(e|3)+')
    word.sub!('i', '(i|1)+').sub!('1', '(i|1)+')
    word.sub!('o', '(o|0)+').sub!('0', '(o|0)+')
    word.sub!('u', '(u|ü)+').sub!('ü', '(u|ü)+')
    
    #word.each_char do |character|
    #  if DICTIONARY.include?(character)
    #    case character
    #      when 'a', '@'
    #        regex += '(a|@)+'
    #      when 'e', '3'
    #        regex += '(e|3)+'
    #      when 'i', '1'
    #        regex += '(i|1)+'
    #      when 'o', '0'
    #        regex += '(o|0)+'
    #      when 'u', 'ü'
    #        regex += '(u|ü)+'
    #    end
    #  else
    #    regex += character
    #  end
    #end
    word
  end
end
