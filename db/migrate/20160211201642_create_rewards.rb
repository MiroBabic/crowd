class CreateRewards < ActiveRecord::Migration
  def change
    create_table :rewards do |t|
      t.string :name
      t.integer :amount
      t.references :project, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
