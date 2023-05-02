class AddCaddressToStudent1s < ActiveRecord::Migration
  def change
    add_column :student1s, :caddress, :string
  end
end
