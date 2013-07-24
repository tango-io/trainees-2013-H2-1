class AddSubCategoryIdToProjects < ActiveRecord::Migration
  def change
    remove_column :projects, :category
    add_column :projects, :sub_category_id, :integer
  end
end
