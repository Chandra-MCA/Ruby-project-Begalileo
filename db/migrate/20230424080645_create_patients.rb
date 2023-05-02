class CreatePatients < ActiveRecord::Migration
  def change
    create_table :patients do |t|
      t.string :role
      t.string :description
      t.references :product, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
