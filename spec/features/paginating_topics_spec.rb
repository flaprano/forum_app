require 'rails_helper'

feature 'Paginating Topic' do
  scenario 'with success' do
    delete_topics
    create_topics

    visit root_path

    expect(page).to have_css('a', text: 'Next')
  end
end
