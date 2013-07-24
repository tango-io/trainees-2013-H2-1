class AddTypeToCategories < ActiveRecord::Migration
  def change
    rename_column :categories, :categories, :name
    add_column :categories, :type, :string
  end
end
