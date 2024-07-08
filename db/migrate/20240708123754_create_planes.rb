class CreatePlanes < ActiveRecord::Migration[7.1]
  def change
    create_table :planes do |t|
      t.integer :capacity
      t.string :make
      t.string :name

      t.timestamps
    end
  end
end
