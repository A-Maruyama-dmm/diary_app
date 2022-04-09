class PostsController < ApplicationController
  def index
    @posts = Post.all
    @post = Post.new
  end

  def show
    @post = Post.find(params[:id])
    @posts = Post.all
  end

  def edit
    @post = Post.find(params[:id])
  end
  
  def create
   @post = Post.new(posts_params)
    if @post.save
      redirect_to post_path(@post)
    else
    @posts = Post.all
      render :index
    end
  end
  
  
  
  private
  def posts_params
    params.permit(:title, :content)
  end
  
end
