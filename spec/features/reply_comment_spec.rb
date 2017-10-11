require 'rails_helper'

feature 'Reply comment on Topic' do
  scenario 'with success' do
    delete_topics
    delete_words
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

  scenario 'and filter words' do
    delete_topics
    delete_words
    create(:profanity_word)
    topic = create(:post)
    comment = create(:post)
    topic.children << comment

    visit root_path

    click_on topic.title
    click_on 'Reply'

    fill_in 'Comment', with: 'Resposta de comentário na cama'
    click_on 'Reply'

    expect(page).to have_css('li', text: 'Resposta de comentário na XXXX')
  end
end
