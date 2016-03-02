class AddProfilePicToProject < ActiveRecord::Migration
  def change
    add_column :projects, :profile_pic, :string
  end
end
