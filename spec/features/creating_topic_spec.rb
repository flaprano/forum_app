require 'rails_helper'

feature 'Creating Topic' do
  scenario 'with success' do
    delete_topics

    visit root_path

    fill_in 'Title', with: 'Post de teste'
    fill_in 'Message', with: 'Mensagem do post'

    click_on 'Create post'

    expect(page).to have_css('a', text: 'Post de teste')
  end
end
