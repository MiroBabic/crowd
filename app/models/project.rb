class Project < ActiveRecord::Base
  belongs_to :user
  has_one :category

  mount_uploaders :pictures, ProjectImageUploader
end
