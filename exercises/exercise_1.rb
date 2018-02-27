require_relative '../setup'

puts "Exercise 1"
puts "----------"

# ActiveRecord::Schema.define do
# 	create_table :stores
# 	  t.string :name
# 	  t.string :annual_revenue
# 	  t.string :mens_apparel
# 	  t.string :womens_apparel
# 	end

class Store < ActiveRecord::Base
  validates :name, presence: true
  validates :annual_revenue, presence: true
end

Store.create!(
	name: 'Burnaby',
	annual_revenue: '3000000',
	mens_apparel: true,
	womens_apparel: true
	)
Store.create!(
	name: 'Richmond',
	annual_revenue: '1260000',
	womens_apparel: true
	)
Store.create!(
	name: 'Gastown',
	annual_revenue: '190000',
	mens_apparel: true
	)

puts Store.count