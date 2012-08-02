class CreateTableDislike < ActiveRecord::Migration
  def up
    create_table :users_posts_dislike do |t|
      t.integer :user_id
      t.integer :post_id
  
      t.timestamps 
  end
end

  def down
    drop_table :users_posts_dislike
  end
end
