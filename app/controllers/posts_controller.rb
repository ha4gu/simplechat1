class PostsController < ApplicationController

  before_action :must_be_authenticated

  def index
    @posts = Post.all.order(created_at: :desc)
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(message: params[:message], author: params[:author])
    if @post.save
      redirect_to(chat_url)
    else
      render("posts/new")
    end
  end

end
