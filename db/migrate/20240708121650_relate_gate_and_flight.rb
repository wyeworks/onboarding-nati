class RelateGateAndFlight < ActiveRecord::Migration[7.1]
  def change
    create_join_table :flights, :gates
  end
end
