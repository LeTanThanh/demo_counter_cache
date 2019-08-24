class AddGroupsCountToUsers < ActiveRecord::Migration[5.2]
  def self.up
    add_column :users, :groups_count, :integer, null: false, default: 0
  end

  def self.down
    remove_column :users, :groups_count
  end
end
