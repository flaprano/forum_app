require 'rails_helper'

feature 'Creating Topic' do
  scenario 'with success' do
    delete_topics
    delete_words

    visit root_path

    fill_in 'Title', with: 'Post de teste'
    fill_in 'Message', with: 'Mensagem do post'

    click_on 'Create post'

    expect(page).to have_css('a', text: 'Post de teste')
  end

  scenario 'and filter words' do
    delete_topics
    delete_words
    create(:profanity_word)

    visit root_path
    fill_in 'Title', with: 'Post de teste'
    fill_in 'Message', with: 'A cama não é boa não. C@ma'

    click_on 'Create post'
    click_on 'Post de teste'

    expect(page).to have_css('p', text: 'A XXXX não é boa não. XXXX')
  end
end
