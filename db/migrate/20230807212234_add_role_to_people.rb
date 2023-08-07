class AddRoleToPeople < ActiveRecord::Migration[7.0]
  def change
    add_column :people, :role, :integer, default: 0
  end
end
