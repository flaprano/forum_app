require 'rails_helper'

RSpec.describe PostsHelper, type: :helper do
  describe 'Get list of comments' do
    it 'Returns a list of comments in html' do
      comments = [
        create(:post, title: 'Comment 1', message: 'Comment 1'),
        create(:post, title: 'Comment 2', message: 'Comment 2')
      ]
      post_root = create(:post)
      comments.each do |comment|
        post_root.children << comment
      end

      list_html = get_comments(post_root.reload.children)

      expect(list_html).to have_css('li', text: 'Comment 1')
      expect(list_html).to have_css('li', text: 'Comment 2')
    end

    it 'Returns a list of comments in html with replys' do
      comments = [
        create(:post, title: 'Comment 1', message: 'Comment 1'),
        create(:post, title: 'Comment 2', message: 'Comment 2')
      ]

      replys = [
        create(:post, title: 'Reply 1', message: 'Reply 1'),
        create(:post, title: 'Reply 2', message: 'Reply 2')
      ]

      post_root = create(:post)

      comments.each do |comment|
        post_root.children << comment
      end

      replys.each do |reply|
        comments[0].children << reply
      end

      list_html = get_comments(post_root.reload.children)

      expect(list_html).to have_css('li', text: 'Reply 1')
      expect(list_html).to have_css('li', text: 'Reply 2')
    end
  end
end
