class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
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

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.name = params[:name]
    @user.email = params[:email]
    if @user.save
      redirect_to(user_url)
    else
      render("users/edit")
    end
  end

end
