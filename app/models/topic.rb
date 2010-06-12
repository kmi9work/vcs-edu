class Topic < ActiveRecord::Base
  belongs_to :user, :foreign_key => :user_id
  has_many :comments, :foreign_key => :comment_id
  has_one :voting, :foreign_key => :voting_id
end
