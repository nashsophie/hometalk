class PostsController < ApplicationController
  def index
    @posts = Post.all
  end
  
  def new
    @post = Post.new
  end
  
  
  def show
    @post = Post.find(params[:id])
    #@comment = @posts.comments.find(params[:post_id])
    #Post.includes(:comments).find(params[:id])
    
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @post }
    end
  end
  
end
