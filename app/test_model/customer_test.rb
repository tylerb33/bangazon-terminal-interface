require 'minitest/autorun'
require_relative '../models/customer.rb'

class CustomerTest < Minitest::Test

    def setup
    # setup two things
    @customer = Customer.new(

        { 
        :info_first_name => "Jane",  
        :info_last_name => "Doe", 
        :active => false, 
        :info_street_address => "blah blah 123",
        :info_city => "Nashville",
        :info_state => "TN",
        :info_postal_code => "12345",
        :info_phone_number => "1-123-234-5678",
        :payment => nil
        } 

        )
    
    end

    # Test for instance of the object
    def test_initialize
    	assert_raises ArgumentError do 
        Customer.new
    	end
    end

    def test_initialize_for_arguments
    assert_instance_of Customer, @customer 
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