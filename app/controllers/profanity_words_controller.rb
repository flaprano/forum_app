class ProfanityWordsController < ApplicationController
  def index
    @profanity_words = ProfanityWord.all.page(params[:page]).per(10)
  end

  def create
    word = params[:profanity_word][:word]
    regex = ProfanityWord.generate_regex word
    ProfanityWord.create(word: word, regex: regex)
    redirect_to profanity_words_path
  end
end
