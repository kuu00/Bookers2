class BooksController < ApplicationController
  def new
    @book_image = Book.new
  end
  
  def create
    @book_image = Book.new(book_image_params)
    @book_image.user_id = current_user.id
    @book_image.save
    redirect_to book_images_path
  end

  def index
  end

  def show
  end
  
  private
  def book_image_params
    params.require(:book_image).permit(:title, :body)
  end
end