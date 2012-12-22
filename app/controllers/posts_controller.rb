class PostsController < ApplicationController
  before_filter :find_post, only: [:show, :edit]
  before_filter :require_user, only: [:new, :create, :edit, :update, :destory]
  
  def index
    @posts = Post.all
  end
  
  def new
    @post = Post.new
  end
  
  def create
    @post = Post.new(params[:post])
    if @post.save
      flash[:notice]= "Your post is added successfully"
      redirect_to root_path
    else
      flash[:error] = "Please check Title and URL."
      render :new
    end      
  end
  
  def show
    @comments = @post.comments
    @comment = @post.comments.build
    #@comment = @post.comments.new
    #  build和new都可以，没差别，一般build
  end
  
  def edit
  end
  
  def find_post
    @post = Post.find(params[:id])
  end
  
end