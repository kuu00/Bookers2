class PostImagesController < ApplicationController
  def new
    @post_image = PostImage.new
  end
  
  def create
    @post_image = PostImage.new(post_image_params)
    @post_image.user_id = current_user.id
    @post_image.book_id = current_book.id
    @post_image.save
    redirect_to post_images_path
  end

  def index
    @post_image = PostImage.all
  end

  def show
  end
  
  private
  
  def post_image_params
    params.require(:post_image).permit(:image)
  end
end
