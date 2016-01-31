class ChangePictureType < ActiveRecord::Migration
 def down
    change_column :users, :picture, :blob
  end

  def up
    change_column :users, :picture, :string
  end
end
