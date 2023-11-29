class AddCoordinatesToSharks < ActiveRecord::Migration[7.1]
  def change
    add_column :sharks, :latitude, :float
    add_column :sharks, :longitude, :float
  end
end
