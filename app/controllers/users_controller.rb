class UsersController < ApplicationController
  def new
  end

  def create
    user = User.new(user_params)
    user.save
    redirect_to 'user_path(@user)'
  end

  def show
    @new_book = Book.new
    @user = User.find(params[:id])
    @books = @user.books
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    user = User.new(user_params)
    if user.save
      redirect_to 'user_path(@user)'
    else
      @user = User.find(params[:id])
      render :edit
    end
  end

  def index
    @book = Book.new
    @user = User.all
    @books = Book.all
    @user = current_user
  end

  private

  def user_params
    params.require(:user).permit(:name, :profile_image, :introduction)
  end
end
