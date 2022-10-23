class UsersController < ApplicationController
  def new
  end

  def create
  end

  def show
    @books = Book.new
    @user = User.find(params[:id])
    @book = Book.find(params[:id])
    @books = @user.books
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to user_path(@user.id)
  end

  def index
    @book = Book.new
    @user = User.all
    @books = Book.all
    @user = current_user
  end

  private

  def user_params
    params.require(:user).permit(:name, :profile_image)
  end
end
