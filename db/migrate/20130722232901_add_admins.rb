class AddAdmins < ActiveRecord::Migration
  def change
    add_column  :users , :name ,  :string
    add_column  :users , :location , :string
    add_column  :users , :time_zone , :string
    add_column  :users , :biography , :text
    add_column  :users , :admin , :boolean , :default => false 
  end
end
