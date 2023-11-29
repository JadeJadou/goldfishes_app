class AddSkillsToSharks < ActiveRecord::Migration[7.1]
  def change
    add_column :sharks, :skills, :string
  end
end
