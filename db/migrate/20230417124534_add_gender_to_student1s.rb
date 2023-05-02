class AddGenderToStudent1s < ActiveRecord::Migration
  def change
    add_column :student1s, :gender, :string
  end
end
