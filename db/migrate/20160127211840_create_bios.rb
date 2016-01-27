class CreateBios < ActiveRecord::Migration
  def change
    create_table :bios do |t|
      t.string :name
      t.string :street
      t.string :city
      t.integer :zip
      t.string :phone
      t.string :contactemail
      t.binary :picture, :limit => 1.megabyte
      t.string :fbprofile
      t.string :gplusprofile
      t.string :twitterprofile
      t.string :personalweb
      t.string :aboutme
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
