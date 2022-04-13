class PostsController < ApplicationController
  def new
    @post = Post.new
  end

  def index
    @posts = Post.all
    @post = Post.new
  end


  def show
    @post = Post.find(params[:id])
  end

  def edit
    @post = Post.find(params[:id])
  end

  def create
   @post = Post.new(posts_params)
    if @post.save
      redirect_to post_path(@post)
    else
    @post = Post.all
      render :index
    end
  end



  private
  def posts_params
    params.require(:post).permit(:title, :content)
  end

end
