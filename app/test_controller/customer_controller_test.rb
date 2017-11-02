require 'minitest/autorun'
require_relative '../controllers/customer_controller.rb'

class CustomerTest < Minitest::Test

	def setup
		customer_test = Customer.new
	end

	def test_first_name_sets_correct_value
		assert_includes "jordan", customer_test.set_customer_first_name("jordan")
		#@customer_info will have a key/value pair of :info_first_name => jordan
   
	end
end