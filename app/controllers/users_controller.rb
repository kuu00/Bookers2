class UsersController < ApplicationController
  def new
    @user = User.new
  end
  
  def create
  end
  
  def show
    @users = User.find(params[:id])
  end
  
  def edit
  end
 
  def index
  end
end
