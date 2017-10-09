module PostsHelper
  def create_topics
    Post.destroy_all
    create(:post)
    create(:post)
    create(:post)
  end

  def delete_topics
    Post.destroy_all
  end
end

RSpec.configure do |config|
  config.include PostsHelper, type: :feature
end
