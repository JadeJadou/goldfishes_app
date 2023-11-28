class ModifyNameColumnToUsers < ActiveRecord::Migration[7.1]
  def change
    rename_column(:users, :name, :last_name)
  end
end
