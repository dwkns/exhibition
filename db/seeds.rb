# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

25.times do
  Coupon.create(
    value: SecureRandom.hex(3).upcase,
    redeemed: false,
    redemption_date: nil,
    length: 30 # valid for 30 days
  )
end

10.times do
  date = Time.now - rand(1..50).days # random date < 100 days ago
  Coupon.create(
    value: SecureRandom.hex(3).upcase,
    redeemed: true,
    redemption_date: date,
    length: 30 # valid for 30 days
  )
end
