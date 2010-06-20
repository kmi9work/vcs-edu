class Message < ActiveRecord::Base
  validates_presence_of :student_id
  belongs_to :student, :foreign_key => :student_id
end
