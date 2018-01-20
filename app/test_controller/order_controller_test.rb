require 'minitest/autorun'
require_relative '../controllers/order_controller.rb'

# The below should test 
    def test_user_input_to_index_value
        all_customers = @customer.get_all_customers
        assert_instance_of Array, all_customers
    end
