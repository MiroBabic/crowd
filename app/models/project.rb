class Project < ActiveRecord::Base
  belongs_to :user
  belongs_to :category
  has_many :rewards, :dependent => :destroy
  has_many :payments, :dependent => :destroy
  mount_uploaders :pictures, ProjectImageUploader
  mount_uploader :profile_pic, ProfilePicUploader 
  

  def collected_money_percentage
	  sum = payments.where(confirmed: true).sum(:amount)
	  (100.0 * sum / amount ).round(3)
   end

   include ActiveModel::Validations
  	validates_presence_of :name, :category_id, :amount
    validates_length_of :annotation, maximum: 250
     validates_numericality_of :amount, :greater_than => 0

end
