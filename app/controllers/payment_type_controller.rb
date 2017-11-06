require_relative '../models/payment_type.rb'
require_relative 'main_menu_controller.rb'

# The PaymentTypeController class will house everything related to payment types. Since this class has very limited uses, it could potentially just be rolled up into the Customer class. The main job of this class is to capture the new payment type / account number and get the info to the model where it will be sent to the DB. The main_menu_controller is required here because we reference it to bring the user back to the page that shows all available options.

class PaymentTypeController

attr_accessor :payment_type_info

=begin
$placeholder_active_customer = 
{
    :CustomerId=> 1,
    :info_first_name=>"Cara", 
    :info_last_name=>"Ward", 
    :info_street_address=>"44455 Jackson St.", 
    :info_city=>"Indianapolis", 
    :info_state=>"IN", 
    :info_postal_code=>"47222", 
    :info_phone_number=>"4443335555"
}
=end

    def initialize 
        @payment_type_info = Hash.new
        @main_menu_controller = MainMenuController.new
    end

    def gather_payment_info
        get_account_number
        get_account_type

        # This line is making an instance of the payment type model passing in hash that now includes the user input.
        @payment_type_model = PaymentType.new(@payment_type_info)
        # This line is calling on that new instance of the model and calling on the add method to send the new info to the DB.
        @payment_type_model.add_new_payment_type

        # The below is calling on the Main Menu class, and the display method in order to show all available options to the user, once the new customer has been added. Note that the instance of Main Menu class is created above in Initialize.
        @main_menu_controller.display_main_menu
    end

    # The below methods are broken out into a 'get info' and 'set info in the hash' method for testing. We will be testing all 'set' methods here.
    def get_account_number
        puts "What account number would you like to use?"
        print ">"
        set_account_number(gets.chomp)
    end

    def get_account_type
        puts "What account type would you like to use?"
        print ">"
        set_account_type(gets.chomp)
    end

    def set_account_number(account_number)
        @payment_type_info[:account_number] = account_number
    end

    def set_account_type(account_type)
        @payment_type_info[:account_type] = account_type
    end

end