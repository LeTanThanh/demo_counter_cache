class CreatePhases < ActiveRecord::Migration[5.2]
  def change
    create_table :phases do |t|
      t.references :project
      t.string :name
      t.string :description

      t.timestamps
    end
  end
end
