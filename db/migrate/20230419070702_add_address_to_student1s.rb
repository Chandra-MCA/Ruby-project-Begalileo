class AddAddressToStudent1s < ActiveRecord::Migration
  def change
    add_column :student1s, :address, :string
  end
end
