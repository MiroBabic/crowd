class CreatePayments < ActiveRecord::Migration
  def change
    create_table :payments do |t|
      t.references :user, index: true, foreign_key: true
      t.references :project, index: true, foreign_key: true
      t.references :reward, index: true, foreign_key: true
      t.integer :amount
      t.boolean :confirmed

      t.timestamps null: false
    end
  end
end
