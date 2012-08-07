class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.text :body
      t.string :user_email
      t.integer :user_id

      t.timestamps
    end
    add_index :messages, :user_email
  end
end
