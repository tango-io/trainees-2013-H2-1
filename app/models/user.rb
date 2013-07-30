require 'file_size_validator' 

class User < ActiveRecord::Base


  has_many :projects, :dependent => :destroy

  mount_uploader :avatar, ImageUploader
 

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :avatar, 
    :file_size => { :maximum => 5.megabytes.to_i} 
  validates_integrity_of :avatar
  validates_processing_of :avatar  

end
