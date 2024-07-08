class CreateGates < ActiveRecord::Migration[7.1]
  def change
    create_table :gates do |t|
      t.references :airport, null: false, foreign_key: true

      t.timestamps
    end
  end
end
