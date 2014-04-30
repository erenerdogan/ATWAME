class UsersController < ApplicationController
  def index
    @users = User.all
  end
  
  def login
    @user = User.find_by_email_and_password(params[:email],params[:password])
    if @user
      @message = true
    else
      @message = false
    end
    
  end
  
  def register
    @user = User.find_by_email(params[:email])
    unless @user && (params[:email] != "")
       @message = true
       @user = User.new
       @user.name = params[:name]
       @user.email = params[:email]
       @user.password = params[:password]
       @user.save
     else
       @message = false
    end
    
  end
  
  
end
