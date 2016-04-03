class AddLocaleToCategories < ActiveRecord::Migration
  def change
    add_column :categories, :name_en, :string
    add_column :categories, :name_cs, :string
    add_column :categories, :name_hu, :string
    add_column :categories, :name_pl, :string
  end
end
