class Voting < ActiveRecord::Base
  has_one :topic, :foreign_key => :topic_id
end
