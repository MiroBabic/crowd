class AddAnnotationAndEnableToProject < ActiveRecord::Migration
  def change
  	add_column :projects, :annotation, :string
  	add_column :projects, :enabled, :boolean
  end
end
