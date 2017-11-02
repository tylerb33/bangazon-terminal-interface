require './models/customer.rb'

class CustomerController
	def get_customer_info
		puts "What's your first name?"
		print "> "
		first_name = gets.chomp

		puts "What's your last name? "
		print "> "
		last_name = gets.chomp

		puts "What's your street address? "
		print "> "
		street_address = gets.chomp

		puts "In what city do you live? "
		print "> "
		city = gets.chomp

		puts "In what state do you live? "
		print "> "
		state = gets.chomp

		puts "What is your postal code? "
		print "> "
		postal_code = gets.chomp

		puts "What is your phone number? "
		print "> "
		phone_number = gets.chomp

		# puts first_name
		# puts last_name
		# puts street_address
		# puts city
		# puts state
		# puts postal_code
		# puts phone_number
	end

end
