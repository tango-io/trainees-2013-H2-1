class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :categories
      t.references :parent
      t.timestamps
    end
  end
end
