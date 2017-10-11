module ProfanityWordsHelper
  def delete_words
    ProfanityWord.destroy_all
  end
end

RSpec.configure do |config|
  config.include ProfanityWordsHelper, type: :feature
end
