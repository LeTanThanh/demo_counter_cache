class AddTasksCountToPhases < ActiveRecord::Migration[5.2]
  def self.up
    add_column :phases, :tasks_count, :integer, null: false, default: 0
  end

  def self.down
    remove_column :phases, :tasks_count
  end
end
