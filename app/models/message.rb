class Message < ActiveRecord::Base
  validates_presence_of :student_to
  belongs_to :student  
end
