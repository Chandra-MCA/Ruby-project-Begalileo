class RemoveCaddressFromStudent1s < ActiveRecord::Migration
  def change
    remove_column :student1s, :caddress, :string
  end
end
