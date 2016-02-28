class Project < ActiveRecord::Base
  belongs_to :user
  belongs_to :category
  has_many :rewards, :dependent => :destroy
  has_many :payments, :dependent => :destroy
  mount_uploaders :pictures, ProjectImageUploader

  def collected_money_percentage
	  sum = payments.where(confirmed: true).sum(:amount)
	  (100.0 * sum / amount ).round(3)
   end

end
