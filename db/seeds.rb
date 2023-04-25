# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

5.times do
  Coupon.create(
    value: SecureRandom.hex(3),
    redeemed: false,
    redemption_date: nil,
    length: 30 # valid for 60 days
  )
end

5.times do
  date = Time.now - rand(1..45).days # random date < 100 days ago
  Coupon.create(
    value: SecureRandom.hex(3),
    redeemed: true,
    redemption_date: date,
    length: 30 # valid for 60 days
  )
end
