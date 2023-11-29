class AddWeightToSharks < ActiveRecord::Migration[7.1]
  def change
    add_column :sharks, :weight, :string
  end
end
