class AddDateConfirmedToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :confirmdate, :datetime
  end
end
