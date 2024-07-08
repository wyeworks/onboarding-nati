class CreateAirports < ActiveRecord::Migration[7.1]
  def change
    create_table :airports do |t|
      t.integer :code
      t.float :location_latitude
      t.float :location_longitude
      t.string :name

      t.timestamps
    end
  end
end
