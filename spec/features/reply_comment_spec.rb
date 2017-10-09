require 'rails_helper'

feature 'Comment Topic' do
  scenario 'with success' do
    delete_topics
    topic = create(:post)
    comment = create(:post)
    topic.children << comment

    visit root_path

    click_on topic.title
    click_on 'Reply'

    fill_in 'Comment', with: 'Resposta de comentario'
    click_on 'Reply'

    expect(page).to have_css('li', text: 'Resposta de comentario')
  end
end
