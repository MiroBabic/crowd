class Project < ActiveRecord::Base
  belongs_to :user
  belongs_to :category
  has_many :rewards, :dependent => :destroy
  mount_uploaders :pictures, ProjectImageUploader
end
