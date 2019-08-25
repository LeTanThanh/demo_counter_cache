class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.references :phase
      t.string :name
      t.string :description

      t.timestamps
    end
  end
end
