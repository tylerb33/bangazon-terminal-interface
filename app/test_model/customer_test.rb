require 'minitest/autorun'
require_relative '../models/customer.rb'

class CustomerTest < Minitest::Test

    def setup
    # setup two things
    @customer = Customer.new("First_Name", "Last_Name", "Active", "Street Address", "City", "State", 37130, 1231231234, 1)
    @customer.get_customer_info
    
    end

    # Test for instance of the object
    def test_initialize
    	assert_raises ArgumentError do 
        Customer.new
    	end
    end

    def test_initialize_for_arguments
    assert_instance_of Customer, Customer.new("arg1", "arg2", "arg3", "arg4", "arg5", "arg6", "arg7", "arg8", "arg9")
    end

    def test_create_customer_sql
        new_customer_id = @customer.get_customer_info
        assert_operator new_customer_id, :>, 0
        # assert operator means that we're asserting this operator is true
    end

    def test_get_all_customers
        all_customers = @customer.get_all_customers
        assert_instance_of Array, all_customers
    end

    def test_get_single_customer
        single_customer = @customer.get_single_customer(1)
        assert_instance_of Array, single_customer
    end

    def test_updating_customer
        update_customer = @customer.update_customer
        assert_instance_of Array, update_customer
    end
end