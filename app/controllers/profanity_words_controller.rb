class ProfanityWordsController < ApplicationController
    def index
        @profanity_words = ProfanityWord.all.page(params[:page]).per(2)
    end
    
    def new
        @profanity_word = ProfanityWord.new
    end
    
    def create
        word = params[:profanity_word][:word]
        regex = ProfanityWord.generate_regex word
        ProfanityWord.create(word: word, regex: regex)
        redirect_to profanity_words_path
    end
    
    private
    
    def profanity_word_params
        params.require(:profanity_word).permit(:word)
    end
end
