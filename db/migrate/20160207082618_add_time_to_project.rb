class AddTimeToProject < ActiveRecord::Migration
  def change
  	add_column :projects, :duration, :string
  end
end
