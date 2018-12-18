class UsersController < ApplicationController

  before_action :must_be_authenticated, {only: [:index, :show, :edit, :update, :logout]}
  before_action :must_not_be_authenticated, {only: [:new, :register, :login_form, :login]}
  before_action :ensure_same_user, {only: [:edit, :update]}

  def ensure_same_user
    redirect_to(users_url) if @current_user.id != params[:id].to_i
  end

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
    @user = User.new(name: params[:name], email: params[:email],
      image_name: "iconfinder_8_avatar_2754583.png",
      password: params[:password] )
    if @user.save
      session[:user_id] = @user.id
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

  def login_form
  end

  def login
    @user = User.find_by(email: params[:email])
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to(chat_url)
    else
      @error_message = "メールアドレスまたはパスワードが間違っています"
      @email = params[:email]
      @password = params[:password]
      render("users/login_form")
    end
  end

  def logout
    session[:user_id] = nil
    redirect_to(login_url)
  end

end
