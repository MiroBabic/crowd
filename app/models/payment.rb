class Payment < ActiveRecord::Base
  belongs_to :user
  belongs_to :project
  belongs_to :reward

  include ActiveModel::Validations
  
     validates_numericality_of :amount, :greater_than => 0
  
end
