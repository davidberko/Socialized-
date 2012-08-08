class Message < ActiveRecord::Base

  attr_accessible :body, :user_id, :sender_id
  belongs_to :user
end
