class CreateTableMessages < ActiveRecord::Migration
  def up
    create_table :messages do |t|
      t.text :body
      t.integer :user_id

      t.timestamps
  end
  add_index :messages, :user_id
end

  def down
    drop_table :messages 
  end
end
