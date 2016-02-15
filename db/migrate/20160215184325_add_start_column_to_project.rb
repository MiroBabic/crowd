class AddStartColumnToProject < ActiveRecord::Migration
  def change
    add_column :projects, :started, :datetime
  end
end
