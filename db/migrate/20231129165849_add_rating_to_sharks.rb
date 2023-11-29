class AddRatingToSharks < ActiveRecord::Migration[7.1]
  def change
    add_column :sharks, :rating, :float
  end
end
