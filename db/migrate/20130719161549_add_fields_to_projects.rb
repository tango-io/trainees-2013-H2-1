class AddFieldsToProjects < ActiveRecord::Migration
  def change
    add_column :projects , :user_id , :integer
    add_column :projects , :tags , :string
    add_column :projects , :city , :string
    add_column :projects , :img_src , :string
    add_column :projects , :duration , :integer
    add_column :projects , :goal , :float
  end
end
