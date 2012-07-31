class CreateRelationships < ActiveRecord::Migration
  def self.up

    create_table :relationships do |t|
      t.integer :requester_id
      t.integer :requested_id

      t.timestamps
    end
    add_index :relationships, :requested_id
    add_index :relationships, :requester_id
  end

  def self.down
    drop_table :relationships
  end
end
