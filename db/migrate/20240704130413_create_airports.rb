class CreateAirports < ActiveRecord::Migration[7.1]
  def change
    create_table :airports do |t|
      t.string :location
      t.string :name
      t.integer :code

      t.timestamps
    end
  end
end
