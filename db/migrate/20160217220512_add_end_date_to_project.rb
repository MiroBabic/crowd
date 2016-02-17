class AddEndDateToProject < ActiveRecord::Migration
  def change
    add_column :projects, :enddate, :datetime
  end
end
