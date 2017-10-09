require 'rails_helper'

feature 'Show Topic Details' do
  scenario 'with success' do
    delete_topics
    topic = create(:post)

    visit root_path

    click_on topic.title

    expect(page).to have_css('h1', text: topic.title)
  end
end
