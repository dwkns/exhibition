class CouponsController < ApplicationController
  def index
    @coupons = Coupon.all
  end

  def update_coupon
    @coupon_details = {
      submitted: true,
      exists: false,
      redeemed: false,
      coupon_code: "",
      message: ""
    }
    submitted_coupon_code = params.require(:coupon).permit(:coupon_code)[:coupon_code]

    if submitted_coupon_code == ""
      @coupon_details[:message] = "You didn't enter a code"
    else
      coupon_from_db = Coupon.find_by(value: submitted_coupon_code)

      if coupon_from_db != nil
        @coupon_details[:exists] = true
        @coupon_details[:coupon_code] = coupon_from_db[:value]
        @coupon_details[:redeemed] = coupon_from_db[:redeemed]
        if coupon_from_db[:redeemed] == true
          @coupon_details[:message] = "The coupon has already been used"
        else
          coupon_from_db.update(redeemed: true)
          @coupon_details[:message] = "Success, the coupon has been redeemed"
        end
      else
        @coupon_details[:message] = "The Coupon Doesn't Exist"
      end

    end

    @coupons = Coupon.all # only needed to show all the codes.

    render "index"
  end
end
