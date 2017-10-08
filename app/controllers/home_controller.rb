class HomeController < ApplicationController
  def index
    @topic = Topic.new
    @topics = Topic.page(params[:page]).per(2)
  end
end
