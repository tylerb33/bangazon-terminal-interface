require 'minitest/autorun'
require_relative '../models/payment_type.rb'

class PaymentTypeTest < Minitest::Test

    def setup
    # setup two things
    @payment = PaymentType.new(

        { 
        :account_number => "1234567",  
        :account_type => "Visa", 
        } 

        )
    
    end

   # Test for instance of the object
    # *****working*****
    def test_initialize
        assert_raises ArgumentError do 
        PaymentType.new
        end
    end

    # *****working*****
    def test_initialize_for_arguments
    assert_instance_of PaymentType, @payment 
    end

    # *****IN PROGRESS******
    def test_create_payment_sql
        new_customer_id = @customer.get_payment_info
        assert_operator new_customer_id, :>, 0
        # assert operator means that we're asserting this operator is true
    end

    # *****working*****
    def test_get_all_payment
        all_payment = @payment.get_all_payment
        assert_instance_of Array, all_payment
    end

    # *****working*****
    def test_get_single_customer
        single_payment = @payment.get_single_payment(1)
        assert_instance_of Array, single_payment
    end

    # *****working*****
    def test_updating_payment
        update_payment = @payment.update_single_payment("First_Name", 1)
        assert_instance_of Array, update_payment
    end

end