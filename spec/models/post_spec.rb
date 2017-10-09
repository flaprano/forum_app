require 'rails_helper'

RSpec.describe Post, type: :model do
  describe '#add_comment' do
    it 'adds comments to a post' do
      comments = [
        create(:post, title: 'Comment 1', message: 'Comment 1'),
        create(:post, title: 'Comment 2', message: 'Comment 2')
      ]
      post_root = create(:post)
      comments.each do |comment|
        post_root.children << comment
      end

      expect(post_root.reload.children?).to eq true
    end
  end
end
