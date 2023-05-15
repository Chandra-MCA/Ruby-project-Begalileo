class CreateTeachers < ActiveRecord::Migration
  def change
    create_table :teachers do |t|
      t.string :name
      t.string :email
      t.string :contact
      t.string :address

      t.timestamps null: false
    end
  end
end
