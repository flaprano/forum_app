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
    @post = Post.create(post_params)
    redirect_to root_path
  end

  def comment
    @post = Post.find(params[:post_id])
    @post.children.create(title: @post.title, message: params[:post][:message])
    redirect_to @post
  end

  def new_reply
    @post = Post.find(params[:id])
    @reply = Post.new
  end

  def reply
    @post = Post.find(params[:post_id])
    @post.children.create(title: @post.title, message: params[:post][:message])
    redirect_to @post.root
  end

  private

  def post_params
    params.require(:post).permit(:title, :message)
  end
end
