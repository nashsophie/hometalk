class Comment < ActiveRecord::Base
  attr_accessible :content
  validates_presence_of :content
  
  belongs_to :post
  belongs_to :user
end