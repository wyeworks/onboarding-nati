class CreateSections < ActiveRecord::Migration[7.1]
  def change
    create_table :sections do |t|
      t.references :plane, null: false, foreign_key: true

      t.timestamps
    end
  end
end
