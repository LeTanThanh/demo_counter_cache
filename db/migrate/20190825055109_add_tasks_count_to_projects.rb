class AddTasksCountToProjects < ActiveRecord::Migration[5.2]
  def self.up
    add_column :projects, :tasks_count, :integer, null: false, default: 0
  end

  def self.down
    remove_column :projects, :tasks_count
  end
end
