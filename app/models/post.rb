class Post <ActiveRecord::Base
  attr_accessible :url, :title
  has_many :comments
  has_many :votes

  def vote_count
  	votes.where(direction: "up").count - votes.where(direction: "down").count
    	
    end  
end