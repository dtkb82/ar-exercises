require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

Store.create!(
	name: 'Surrey',
	annual_revenue: '224000',
	womens_apparel: true
	)
Store.create!(
	name: 'Whistler',
	annual_revenue: '1900000',
	mens_apparel: true
	)
Store.create!(
	name: 'Yaletown',
	annual_revenue: '430000',
	mens_apparel: true,
	womens_apparel: true
	)


@mens_stores = Store.where(mens_apparel: true).order(:name, :annual_revenue)
# puts @mens_stores

# puts Store.order(:name, :annual_revenue)

@womens_stores_under1M = Store.where(womens_apparel: true).having("annual_revenue < ?", 1000000)
# puts @womens_stores_under1M
