class AddLengthToCoupon < ActiveRecord::Migration[7.0]
  def change
    add_column :coupons, :length, :integer
  end
end
