class PostsController < ApplicationController

  before_action :must_be_authenticated

  def index
    @posts = Post.all.order(created_at: :desc)
    @post = Post.new
  end

  def show
    @post = Post.find(params[:id])
  end

  def create
    @post = Post.new(message: params[:message],
      author_id: @current_user.id.to_i)
    if @post.save
      redirect_to chat_url
    else
      @posts = Post.all.order(created_at: :desc)
      render :index
    end
  end

end
