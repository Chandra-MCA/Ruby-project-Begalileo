class AddPaddressToStudent1s < ActiveRecord::Migration
  def change
    add_column :student1s, :paddress, :string
  end
end
