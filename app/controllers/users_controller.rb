class UsersController < ApplicationController
  before_filter :authenticate_user!, :except=>[:show]

  def index
    @users = User.all    
  end

  def show
    @user = User.find(params[:id])
  end
  
  def create
    @user = User.new(user_params)
    if @user.save
      sign_in @user
      flash[:success] = "Welcome to the Sample App!"
      redirect_to @user
    else
      render 'new'
    end
  end  
end
