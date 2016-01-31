class AddFieldsToUser < ActiveRecord::Migration
  def change
	add_column :users, :name, :string
  	add_column :users, :street, :string
  	add_column :users, :city, :string
  	add_column :users, :zip, :string
  	add_column :users, :picture, :binary, :limit => 1.megabyte
  	add_column :users, :fbprofile, :string
  	add_column :users, :gplusprofile, :string
  	add_column :users, :twitterprofile, :string
  	add_column :users, :phone, :string
  	add_column :users, :altemail, :string
  	add_column :users, :personalweb, :string
  	add_column :users, :aboutme, :string
  	add_column :users, :admin, :boolean
  end
end
