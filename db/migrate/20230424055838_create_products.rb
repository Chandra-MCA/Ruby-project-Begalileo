class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :first_name
      t.string :last_name
      t.string :gender
      t.string :address
      t.string :peraddress
      t.string :contactNo

      t.timestamps null: false
    end
  end
end
