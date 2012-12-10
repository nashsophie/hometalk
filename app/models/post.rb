class Post <ActiveRecord::Base
  attr_accessible :url, :title
  validates :title, presence: true
  validates :title, length:  {minimum:2}
  validates :url, presence: true
  has_many :comments
  has_many :votes
  
end