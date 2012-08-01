class Message < ActiveRecord::Base
<<<<<<< HEAD
  attr_accessible :body, :user_id
  belongs_to :user
=======
  attr_accessible :body
  has_and_belongs_to_many :users
>>>>>>> e8bfc8bd6f8e5e988f57cea70e4df5dc53d5406c
end
