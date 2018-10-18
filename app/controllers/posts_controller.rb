class PostsController < ApplicationController

  def index

  end

  def new
      @post = Post.new
  end

  def create
    @post = Post.new(params.require(:post).permit(:date, :rational))

    @post.save
    redirect_to @posts
  end

  def show
    @post = Post.find(params[:id])
  end

end
