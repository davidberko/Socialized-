class AddQuotesToUsers < ActiveRecord::Migration
  def change
    add_column :users, :quotes, :text
  end
end
