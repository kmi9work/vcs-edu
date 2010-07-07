class Topic < ActiveRecord::Base
  belongs_to :student
  has_many :comments
  has_one :voting
end
