class CategoriesController < ApplicationController
  def new
    @category = Category.new
    @category.parent = Category.find(params[:id]) unless params[:id].nil?
  end
end
