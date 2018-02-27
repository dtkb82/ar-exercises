require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

@total_rev = Store.sum(:annual_revenue)
puts @total_rev

@avg_rev = @total_rev / Store.count
puts @avg_rev

@number_of_stores = Store.where("annual_revenue < ?", 1000000).count
