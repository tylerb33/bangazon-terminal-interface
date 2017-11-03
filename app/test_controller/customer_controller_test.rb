require 'minitest/autorun'
require_relative '../controllers/customer_controller.rb'

class CustomerTest < Minitest::Test

	def setup
		@customer_controller = CustomerController.new
		# @customer_test[:info_last_name] = "Nora"
		# @customer_test[:info_street_address] = "123 Elm Street"
		# @customer_test[:info_state] = "IL"
		# @customer_test[:info_city] = "Schaumberg"
		# @customer_test[:info_postal_code] = "32445"
		# @customer_test[:info_phone_number] = "4445556677"
	end

	def test_first_name_sets_correct_value
		@customer_controller.set_customer_first_name("Tyler")
		assert_equal "Tyler", @customer_controller.customer_info[:info_first_name]
	end

	# def test_last_name_sets_correct_value
	# 	assert @customer_test[info_last_name] === "Johnson", @customer_test.set_customer_last_name("Johnson")
	# end
end

