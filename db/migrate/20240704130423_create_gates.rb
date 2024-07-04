class CreateGates < ActiveRecord::Migration[7.1]
  def change
    create_table :gates do |t|

      t.timestamps
    end
  end
end
