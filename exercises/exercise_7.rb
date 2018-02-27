require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"


def hourly_rate
  	if hourly_rate >= 40 && hourly_rate <= 200
  		errors.add(:hourly_rate, 'Not in the range!')
  	end
end

# def create_store(store)
# 	store = gets.chomp
# 	if !store
# 		errors.add(:store,  )
# end

# def validate_old_enough
#   	if !dob || dob > 19.years.ago
#   		errors.add(:dob, 'Not old enough!')
#   	end
#   end

# begin
#   ...some code...
# rescue => ex
#   logger.error ex.message
# end
	
