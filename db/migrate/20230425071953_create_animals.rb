class CreateAnimals < ActiveRecord::Migration
  def change
    create_table :animals do |t|
      t.string :name
      t.string :email
      t.string :contact
      t.string :gender

      t.timestamps null: false
    end
  end
end
