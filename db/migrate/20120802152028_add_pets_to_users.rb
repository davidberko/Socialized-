class AddPetsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :pets, :string
  end
end
