class CreateFlights < ActiveRecord::Migration[7.1]
  def change
    create_table :flights do |t|
      t.integer :flight_number
      t.string :type
      t.references :indirect_flight, foreign_key: { to_table: :flights }

      t.timestamps
    end
  end
end
