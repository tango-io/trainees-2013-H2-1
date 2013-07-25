require 'file_size_validator' 

class Project < ActiveRecord::Base

  mount_uploader :image, ImageUploader

  validates_presence_of :project_name, :project_content, :tags, :city, :duration, :goal, message: "can't be empty" 
  validates_numericality_of :duration, only_integer: true, greater_than_or_equal_to: 30   
  validates_numericality_of :goal, :greater_than_or_equal_to => 100   
  belongs_to :sub_category
  validates :image, 
    :presence => true , 
    :file_size => { :maximum => 5.megabytes.to_i} 
  validates_integrity_of :image
    validates_processing_of :image   
end
