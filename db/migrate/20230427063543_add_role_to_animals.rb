class AddRoleToAnimals < ActiveRecord::Migration
  def change
    add_column :animals, :Role, :string
  end
end
