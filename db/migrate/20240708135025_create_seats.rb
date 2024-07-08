class CreateSeats < ActiveRecord::Migration[7.1]
  def change
    create_table :seats do |t|
      t.references :user, foreign_key: true
      t.references :section, foreign_key: true

      t.timestamps
    end
  end
end
