require 'minitest/autorun'

require_relative '../controllers/payment_type_controller.rb'

class PaymentTypeTest < Minitest::Test
    
        def setup
            @payment_type_controller = PaymentTypeController.new
        end

    def test_account_number_sets_correct_value
        @payment_type_controller.set_account_number("1221212121213434")
        assert_equal "1221212121213434", @payment_type_controller.payment_type_info[:account_number]
    end


    def test_account_type_sets_correct_value
        @payment_type_controller.set_account_type("Visa")
        assert_equal "Visa", @payment_type_controller.payment_type_info[:account_type]
    end


end