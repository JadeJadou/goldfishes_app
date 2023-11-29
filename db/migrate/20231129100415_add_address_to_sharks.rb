class AddAddressToSharks < ActiveRecord::Migration[7.1]
  def change
    add_column :sharks, :address, :string
  end
end
