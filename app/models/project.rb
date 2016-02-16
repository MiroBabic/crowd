class Project < ActiveRecord::Base
  belongs_to :user
  belongs_to :category
  has_many :rewards, :dependent => :destroy
  has_many :payments, :dependent => :destroy
  mount_uploaders :pictures, ProjectImageUploader
end
