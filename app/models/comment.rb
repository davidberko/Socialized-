class Comment < ActiveRecord::Base
  attr_accessible :post_id, :remark, :user_id
  belongs_to :user
  belongs_to :post
end
