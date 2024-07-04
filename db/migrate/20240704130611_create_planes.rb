class CreatePlanes < ActiveRecord::Migration[7.1]
  def change
    create_table :planes do |t|
      t.string :name
      t.string :model
      t.integer :capacity

      t.timestamps
    end
  end
end
