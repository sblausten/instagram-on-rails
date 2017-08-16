class PostsController < ApplicationController
  before_action :authenticate_user!, except: [:index]
  before_action :set_post, only: [:show, :edit, :update, :destroy]

  def new
    @post = current_user.posts.new
  end

  def index
    @posts = Post.all
  end

  def show
  end

  def edit
  end

  def update
    if @post.update(permit_post)
      flash[:success] = "Post updated."
      redirect_to post_path(@post)
    else
      flash[:alert] = "There was a problem with your edit. Please try again."
      redirect_to edit_post_path(@post)
    end
  end

  def create
    @post = current_user.posts.new(permit_post)
    if @post.save
      flash[:success] = "Success!"
      redirect_to post_path(@post)
    else
      flash[:alert] = 'You need to add an image.'
      redirect_to new_post_path
    end
  end

  def destroy
    @post.destroy
  end

  private

   def permit_post
     params.require(:post).permit(:image, :description)
   end

   def set_post
     @post = Post.find(params[:id])
   end
end
