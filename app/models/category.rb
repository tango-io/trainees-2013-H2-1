class Category < ActiveRecord::Base
  before_create :set_category_name

  def set_category_name
    self.type = self.class.name
  end
end
