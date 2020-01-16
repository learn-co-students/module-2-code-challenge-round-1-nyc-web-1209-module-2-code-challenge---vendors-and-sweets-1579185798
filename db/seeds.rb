# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Vendor.destroy_all
Sweet.destroy_all
VendorSweet.destroy_all

vendors = ["Insomnia Cookies", "Cookies Cream","Carvel","Gregory's Coffee","Duane Park Patisserie","Tribeca Treats"]
sweets = ["Chocolate Chip Cookie", "Chocolate Chunk Cookie","M&Ms Cookie","White Chocolate Cookie","Brownie","Peanut Butter Icecream Cake", ]

vendors.each do |vendor|
  Vendor.create(name: vendor)
end

sweets.each do |sweet|
  Sweet.create(name: sweet)
end

vs1 = VendorSweet.create!(vendor: Vendor.first, sweet: Sweet.first, price: 2)
vs2 = VendorSweet.create!(vendor: Vendor.first, sweet: Sweet.second, price: 3)
vs3 = VendorSweet.create!(vendor: Vendor.second, sweet: Sweet.third, price: 4)
vs4 = VendorSweet.create!(vendor: Vendor.second, sweet: Sweet.fourth, price: 5)
vs5 = VendorSweet.create!(vendor: Vendor.third, sweet: Sweet.fifth, price: 6)
vs6 = VendorSweet.create!(vendor: Vendor.third, sweet: Sweet.last, price: 7)
vs7 = VendorSweet.create!(vendor: Vendor.fourth, sweet: Sweet.first, price: 8)
vs8 = VendorSweet.create!(Vendor: endor.fourth, sweet: Sweet.second, price: 9)
vs9 = VendorSweet.create!(vendor: Vendor.last, sweet: Sweet.third, price: 10)
vs10 = VendorSweet.create!(vendor: Vendor.last, sweet: Sweet.fourth, price: 20)
