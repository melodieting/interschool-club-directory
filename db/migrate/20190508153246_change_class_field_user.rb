class ChangeClassFieldUser < ActiveRecord::Migration[5.2]
  def change
    rename_column :users, :class, :graduating
  end
end
