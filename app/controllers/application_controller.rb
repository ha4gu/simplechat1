class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :set_current_user

  def set_current_user
    @current_user = User.find(session[:user_id]) if session[:user_id]
  end

  def must_be_authenticated
    redirect_to(login_url) if @current_user.nil?
  end

  def must_not_be_authenticated
    redirect_to(chat_url) if @current_user
  end

end
