class PostsController < ApplicationController
  def index
    @posts = Post.roots.page(params[:page]).per(10)
  end

  def show
    @post = Post.find(params[:id])
    @comment = Post.new
  end

  def create
    title = params[:post][:title]
    message = check_blacklist_words(message_param)
    @post = Post.create(title: title, message: message)
    redirect_to root_path
  end

  def comment
    @post = Post.find(params[:post_id])
    message = check_blacklist_words(message_param)
    @post.children.create(title: @post.title, message: message)
    redirect_to @post
  end

  def new_reply
    @post = Post.find(params[:id])
    @reply = Post.new
  end

  def reply
    @post = Post.find(params[:post_id])
    message = check_blacklist_words(message_param)
    @post.children.create(title: @post.title, message: message)
    redirect_to @post.root
  end

  private

  def message_param
    params[:post][:message]
  end

  def check_blacklist_words(message)
    ProfanityWord.all.each do |profanity_word|
      matches = message.to_enum(:scan, Regexp.new(profanity_word.regex, true)).map { Regexp.last_match }
      unless matches.empty?
        matches.each do |match|
          message.gsub!(match[0], ''.rjust(match[0].length, 'X'))
        end
      end
    end
    message
  end
end
