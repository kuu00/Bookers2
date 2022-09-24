class UsersController < ApplicationController
  def new
  end

  def create
  end

  def show
    @user = User.all
    @post_images = @user.post_images
  end

  def edit
    @user = User.find(params[:id])
  end

  def index
    @user = User.all
  end
end
