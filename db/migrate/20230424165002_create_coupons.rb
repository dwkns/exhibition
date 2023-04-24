class CreateCoupons < ActiveRecord::Migration[7.0]
  def change
    create_table :coupons do |t|
      t.string :value
      t.boolean :redeemed

      t.timestamps
    end
  end
end
