class AddFieldToReward < ActiveRecord::Migration
  def change
    add_column :rewards, :about, :string
  end
end
