class AddColumnToProject < ActiveRecord::Migration
  def change
    add_column :projects, :requested, :boolean
  end
end
