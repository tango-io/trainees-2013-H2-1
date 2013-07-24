class SubCategory < Category
  default_scope { where(type: 'SubCategory') }
  belongs_to :parent_category, primary_key: 'parent_id', class_name: 'Category'
  has_many :projects
end
