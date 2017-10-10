class PostsController < ApplicationController
  def index
    @post = Post.new
    @posts = Post.roots.page(params[:page]).per(2)
  end

  def show
    @post = Post.find(params[:id])
    @comment = Post.new
  end

  def create
    title = params[:post][:title]
    message = check_blacklist_words(get_message_param)
    @post = Post.create(title: title, message: message)
    redirect_to root_path
  end

  def comment
    @post = Post.find(params[:post_id])
    message = check_blacklist_words(get_message_param)
    @post.children.create(title: @post.title, message: message)
    redirect_to @post
  end

  def new_reply
    @post = Post.find(params[:id])
    @reply = Post.new
  end

  def reply
    @post = Post.find(params[:post_id])
    message = check_blacklist_words(get_message_param)
    @post.children.create(title: @post.title, message: message)
    redirect_to @post.root
  end

  private

  def post_params
    params.require(:post).permit(:title, :message)
  end
  
  def check_blacklist_words(message)
      words = message.gsub(/\s+/m, ' ').strip.split(" ")
      
      words.each do |word|
        if word.length > 1
          ProfanityWord.all.each do |regex|
            if Regexp.new(regex.regex, true).match(word)
              message.gsub!(word, ''.rjust(word.length, 'X'))
              break
            end
          end
        end
      end
      message
  end
  
  def get_message_param
    params[:post][:message]
  end
  

end
