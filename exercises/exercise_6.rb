require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

class Employee < ActiveRecord::Base
	belongs_to :store

	validates :first_name, presence: true
	validates :last_name, presence: true
	validates :hourly_rate, presence: true
	validates :store, presence: true

end

@store1.employees.create!(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create!(first_name: "Jim", last_name: "Bob", hourly_rate: 40)
@store1.employees.create!(first_name: "John", last_name: "Gough", hourly_rate: 55)
@store2.employees.create!(first_name: "Rusty", last_name: "Shackleford", hourly_rate: 45)
@store2.employees.create!(first_name: "Angie", last_name: "Smith", hourly_rate: 70)
@store2.employees.create!(first_name: "Pete", last_name: "Peterson", hourly_rate: 60)
