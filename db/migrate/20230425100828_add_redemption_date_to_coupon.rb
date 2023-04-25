class AddRedemptionDateToCoupon < ActiveRecord::Migration[7.0]
  def change
    add_column :coupons, :redemption_date, :date
  end
end
