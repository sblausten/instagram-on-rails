class PostsController < ApplicationController
  def new
    @post = Post.new
  end

  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    if @post.update(permit_post)
      flash[:success] = "Post updated."
      redirect_to post_path(@post)
    else
      flash[:alert] = "There was a problem with your edit. Please try again."
      redirect_to edit_post_path(@post)
    end
  end

  def create
    @post = Post.new(permit_post)
    if @post.save
      flash[:success] = "Success!"
      redirect_to post_path(@post)
    else
      flash[:alert] = 'You need to add an image.'
      redirect_to new_post_path
    end
  end

  private
   def permit_post
     params.require(:post).permit(:image, :description)
   end
end
