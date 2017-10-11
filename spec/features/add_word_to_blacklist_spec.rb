require 'rails_helper'

feature 'Add word to blacklist' do
  scenario 'with success' do
    delete_words

    create(:post)

    visit root_path
    click_on 'Add Word to Blacklist'
    fill_in 'Word', with: 'Cama'
    click_on 'Include word'

    expect(page).to have_css('li', text: 'Cama')
  end
end
