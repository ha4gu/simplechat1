class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def register
    @user = User.new(name: params[:name], email: params[:email])
    if @user.save
      redirect_to(chat_url)
    else
      render("users/new")
    end
  end

end
