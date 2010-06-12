class Comment < ActiveRecord::Base
  belongs_to :topic, :foreign_key => :topic_id
  
  belongs_to :user, :foreign_key => :user_id
    
  has_many :comments, :foreign_key => :comment_id
end
