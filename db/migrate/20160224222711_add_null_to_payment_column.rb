class AddNullToPaymentColumn < ActiveRecord::Migration
  def change
  	change_column :payments, :reward_id, :integer, :null=> true
  end
end
