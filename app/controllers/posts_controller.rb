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
    @post = Post.all
      render :index
    end
  end
  
  def destroy
    @post = Post.find(params[:id])
    @post.destroy
      redirect_to post_path
  end




  def update
    @post = Post.find(params[:id])
    if @post.update(posts_params)
      redirect_to post_path(@post)
    else
    @posts = Post.all
      render :edit
    end
  end

  private
  def posts_params
    params.require(:post).permit(:title, :content)
  end

end
