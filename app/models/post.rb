class Post < ActiveRecord::Base
  attr_accessible :content, :user_id, :like, :image, :dislike 
  mount_uploader :image, ImageUploader
  belongs_to :user
  belongs_to :comment
  has_and_belongs_to_many :likes, join_table: :posts_users, association_foreign_key: :user_id, class_name: User
  has_and_belongs_to_many :dislike, join_table: :posts_users_dislike, association_foreign_key: :user_id, class_name: User
end
