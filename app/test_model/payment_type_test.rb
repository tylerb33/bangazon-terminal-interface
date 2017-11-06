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
    # def test_create_payment_sql
    #     new_customer_id = @customer.get_payment_info
    #     assert_operator new_customer_id, :>, 0
    #     # assert operator means that we're asserting this operator is true
    # end

    # *****TBD*****
    def test_get_all_payments
        all_payments = @payment.get_all_payments
        assert_instance_of Array, all_payments
    end

    # *****working*****
    def test_get_single_payment
        single_payment = @payment.get_single_payment(1)
        assert_instance_of Array, single_payment
    end


    # *****TBD*****
    def test_updating_payment
        update_payment = @payment.update_single_payment("Title", "VISA TEST", 1)
        assert_instance_of Array, update_payment
    end

end