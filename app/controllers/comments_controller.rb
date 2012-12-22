class CommentsController < ApplicationController
  before_filter :require_user, only: [:new, :create, :edit, :update, :destory]
  def create  
    @post = Post.find(params[:post_id])
    
    @comment = @post.comments.build(params[:comment])
    @comment.user_id = current_user.id
    if @comment.save
      flash[:notice]="Your comment is added successful"
      redirect_to @post
    else
      flash[:error] = "Your comment cannot be empty."
      render "posts/show"
      #redirect_to post_path(post) 完整写也可以
    end
  end
end