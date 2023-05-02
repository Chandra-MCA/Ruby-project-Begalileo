class AddContactNoToStudent1s < ActiveRecord::Migration
  def change
    add_column :student1s, :contactNo, :string
  end
end
