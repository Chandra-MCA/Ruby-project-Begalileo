class RenameColumn < ActiveRecord::Migration
  def change
     rename_column :student1s, :paddress, :peraddress
  end
end
