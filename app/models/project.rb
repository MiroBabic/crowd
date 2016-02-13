class Project < ActiveRecord::Base
  belongs_to :user
  has_one :category
  has_many :rewards, :dependent => :destroy
  mount_uploaders :pictures, ProjectImageUploader
end
