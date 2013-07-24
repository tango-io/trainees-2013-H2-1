class ParentCategory < Category
  default_scope { where(type: 'ParentCategory') }
  has_many :sub_categories , foreign_key: 'parent_id', :dependent => :destroy
end
