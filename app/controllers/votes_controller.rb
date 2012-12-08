class VotesController < ApplicationController
  def create
    post = Post.find(params[:post_id]) #这里不用加@, 模板并不引用@post，所以不用加@
    post.votes.create(params[:vote])
    redirect_to post #这样写最简单
    #redirect_to post_path(post) 完整写也可以
  end
  
end
