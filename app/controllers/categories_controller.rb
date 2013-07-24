class CategoriesController < ApplicationController
  def new
    @category = Category.new
    @category.parent = Category.find(params[:id]) unless params[:id].nil?
  end

  #def index
    #@category = nil
    #@categories = Category.find(:all, :conditions => {:parent_id => nil })
  #end

  #def show
    #binding.pry
    #@category = Category.find(params[:id])
    #@categories = @category.sub_categories
    #render :action => :index
  #end

end
