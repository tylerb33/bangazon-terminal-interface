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

	def test_last_name_sets_correct_value
		@customer_controller.set_customer_last_name("Moo")
		assert_equal "Moo", @customer_controller.customer_info[:info_last_name]
	end

	def test_street_address_sets_correct_value
		@customer_controller.set_customer_street_address("blah blah 123")
		assert_equal "blah blah 123", @customer_controller.customer_info[:info_street_address]
	end

	def test_city_sets_correct_value
		@customer_controller.set_customer_city("Nashville")
		assert_equal "Nashville", @customer_controller.customer_info[:info_city]	
	end

	def test_state_sets_correct_value
		@customer_controller.set_customer_state("TN")
		assert_equal "TN", @customer_controller.customer_info[:info_state]	
	end

	def test_postal_code_sets_correct_value
		@customer_controller.set_customer_postal_code("12345")
		assert_equal "12345", @customer_controller.customer_info[:info_postal_code]	
	end

	def test_phone_number_sets_correct_value
		@customer_controller.set_customer_phone_number("1-223-456-7890")
		assert_equal "1-223-456-7890", @customer_controller.customer_info[:info_phone_number]	
	end

	def test_first_name_correct_class_type
        assert_kind_of String, @customer_controller.set_customer_first_name("Jordan")
    
    end
	# def test_last_name_sets_correct_value
	# 	assert @customer_test[info_last_name] === "Johnson", @customer_test.set_customer_last_name("Johnson")
	# end
end

