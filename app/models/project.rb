require 'file_size_validator' 

class Project < ActiveRecord::Base

  scope :custom_sorted, -> { self.order("((duration || ' days')::interval - ('#{Time.now}' - created_at)) ASC") }
  mount_uploader :image, ImageUploader

  validates_presence_of :project_name, :project_content, :tags, :city, :duration, :goal, message: "can't be empty" 
  validates_numericality_of :duration, only_integer: true, greater_than_or_equal_to: 30   
  validates_numericality_of :goal, :greater_than_or_equal_to => 100   
  belongs_to :sub_category
end
