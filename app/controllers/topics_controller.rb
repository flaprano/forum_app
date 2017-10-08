class TopicsController < ApplicationController

  def index
    @topics = Topic.all
  end

  def show
    @topic = Topic.find(params[:id])
    @comment = Topic.new
  end

  def new
    @topic = Topic.new
  end

  def create
    @topic = Topic.create(topic_params)
    redirect_to root_path
  end

  def comments
    @topic = Topic.find(params[:topic_id])
    @topic.children.create(title: @topic.title, message: params[:topic][:message])
    redirect_to @topic
  end

  private

  def topic_params
    params.require(:topic).permit(:title, :message)
  end
end
