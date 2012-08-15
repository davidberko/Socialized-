class Comment < ActiveRecord::Base
  attr_accessible :body, :post_id, :user_id, :commenter
  belongs_to :post
  belongs_to :user
end
