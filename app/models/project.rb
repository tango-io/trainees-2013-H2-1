class Project < ActiveRecord::Base
  validates_presence_of :project_name, :project_content, :tags, :city, :img_src, :duration, :goal, :message => "can't be empty" 
  #validates_confirmation_of :duration, :messaje  
  validates_numericality_of :duration, :only_integer => true, :greater_than_or_equal_to => 30   
  validates_numericality_of :goal, :greater_than_or_equal_to => 100   
end
