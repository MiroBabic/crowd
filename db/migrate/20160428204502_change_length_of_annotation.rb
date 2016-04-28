class ChangeLengthOfAnnotation < ActiveRecord::Migration
  def change
  	change_column :projects, :annotation, :string, :limit=>250
  end
end
