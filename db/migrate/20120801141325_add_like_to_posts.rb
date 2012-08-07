class AddLikeToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :like, :boolean
  end
end
