class Students < ActiveRecord::Base
  has_many :coments, :foreign_key => :comment_id
  has_many :topics, :foreign_key => :topic_id
  has_many :messages, :foreign_key => :message_id
end
