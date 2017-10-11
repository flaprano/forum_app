module PostsHelper
  def create_topics
    delete_topics
    11.times do
      create(:post)
    end
  end

  def delete_topics
    Post.destroy_all
  end
end

RSpec.configure do |config|
  config.include PostsHelper, type: :feature
end
