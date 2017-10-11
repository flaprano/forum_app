require 'rails_helper'

RSpec.describe ProfanityWord, type: :model do
  describe 'generate regex' do
    it 'generate a regex of a given word' do
      word = 'cavalo'

      regex = ProfanityWord.generate_regex word

      expect(regex).to eq 'c(a|@)+v(a|@)+l(o|0)+'
    end
  end
end
