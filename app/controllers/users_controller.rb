class UsersController < ApplicationController
  def new
  end

  def create
    @user = User.new(user_params)
    @user.user_id = current_user.id
    if @user.save
      flash[:notice] = "You have updated user successfully."
      redirect_to user_path(@user.id)
    else
      render :edit
      @user = User.find(params[:id])
    end
  end

  def show
    @new_book = Book.new
    @user = User.find(params[:id])
    @books = @user.books
    @users = @user.books

  end

  def edit
    @user = User.find(params[:id])
    redirect_to (current_user) unless @user == current_user
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    if @user.save
      flash[:notice] = "You have updated user successfully."
      redirect_to user_path(@user.id)
    else
      render :edit
    end
  end

  def index
    @book = Book.new
    @users = User.all
    @books = Book.all
    @user = current_user
  end

  private

  def user_params
    params.require(:user).permit(:name, :profile_image, :introduction)
  end
end
