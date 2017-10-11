FactoryGirl.define do
  factory :profanity_word do
    word 'cama'
    regex 'c(a|@)+m(a|@)+'
  end
end
