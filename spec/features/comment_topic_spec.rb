require 'rails_helper'

feature 'Comment Topic' do
  scenario 'with success' do
    delete_topics
    topic = create(:post)

    visit root_path

    click_on topic.title

    fill_in 'Comment', with: 'Comentário de topico'

    click_on 'Send Comment'

    expect(page).to have_css('li', text: 'Comentário de topico')
  end
end
