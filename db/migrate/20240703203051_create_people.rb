class CreatePeople < ActiveRecord::Migration[7.1]
  def change
    create_table :people do |t|
      t.string :name
      t.string :passaport
      t.integer :phone
      t.string :nationality

      t.timestamps
    end
  end
end
