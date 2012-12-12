class PostsController < ApplicationController
  def index
    @posts = Post.all
  end
  
  def new
    @post = Post.new
  end
  
  def create
    @post = Post.new(params[:post])
    if @post.save
      redirect_to root_path
    else
      flash[:error] = "Please check Title and URL."
      render :new
    end      
  end
  
  def show
    @post = Post.find(params[:id])
    @comments = @post.comments
    @comment = @post.comments.build
    #@comment = @post.comments.new
    #  build和new都可以，没差别，一般build
  end
  
  def edit
    @post = Post.find(params[:id])
  end
end