class AddFlightAndConnection < ActiveRecord::Migration[7.1]
  def change
    add_column :trips, :type, :string
    add_column :trips, :flight_number, :integer
  end
end
