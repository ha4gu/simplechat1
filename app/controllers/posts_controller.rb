class PostsController < ApplicationController

  def index
    @posts = Post.all.reverse
  end

  def show
    @post = Post.find(params[:id])
  end

end
