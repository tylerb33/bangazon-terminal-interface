require_relative '../models/customer.rb'
require_relative 'main_menu_controller.rb'

# The CustomerController class will house everything related to customers. 
# This class does a few things : it captures all relevant data regarding the customer and gets the info to the model
# where it will be sent to the DB. The main_menu_controller is required here because it is referenced to bring the
# user back to the page that shows all available options.

class CustomerController 
    attr_accessor :customer_info, :customer_model
    $active_customer = nil
    def initialize
        @main_menu_controller = MainMenuController.new
        @customer_info = Hash.new
        @customer_test = Customer.new
    end
######################## Everything below is Main Menu option 1 ##############################
    def gather_all_customer_info 
        get_customer_first_name
        get_customer_last_name
        get_customer_street_address
        get_customer_city
        get_customer_state
        get_customer_postal_code
        get_customer_phone_number
        # This line is making an instance of the customer model passing in hash that now includes the user input.
        @customer_model = Customer.new(@customer_info) 
        # This line is calling on that new instance of the model and calling on the add method to send the new info to the DB.
        @customer_model.add_new_customer
        # The below is calling on the Main Menu class, and the display method in order to show all available options to the user, once the new customer has been added. Note that the instance of Main Menu class is created above in Initialize.
        @main_menu_controller.display_main_menu  
    end
    # The below methods are broken out into a 'get info' and 'set info in the hash' method for testing. 
    # We will be testing all 'set' methods here. 
######################################################
    def get_customer_first_name
        puts "What's your first name?"
        print "> "
        first_name = gets.chomp
        first_name_title = to_titlecase(first_name)
        set_customer_first_name(first_name_title)
    end
    def set_customer_first_name(first_name)
        @customer_info[:info_first_name] = first_name
    end
######################################################
    def get_customer_last_name      
        puts "What's your last name? "
        print "> "
        last_name = gets.chomp
        last_name_title = to_titlecase(last_name)
        set_customer_last_name(last_name_title)
    end
    def set_customer_last_name(last_name)
        @customer_info[:info_last_name] = last_name
    end
######################################################
    def get_customer_street_address
        puts "What's your street address?"
        print "> "
        set_customer_street_address(gets.chomp)
    end
    def set_customer_street_address(street_address)
        @customer_info[:info_street_address] = street_address
    end
######################################################
    def get_customer_city
        puts "In what city do you live?"
        print "> "
        city = gets.chomp
        city_title = to_titlecase(city)
        set_customer_city(city_title)
    end
    def set_customer_city(city)
        @customer_info[:info_city] = city
    end
######################################################
    def get_customer_state
        puts "In what state do you live?"
        print "> "
        state = gets.chomp
        state_uppercase = state.upcase
        set_customer_state(state_uppercase)
    end

    def set_customer_state(state)
        @customer_info[:info_state] = state
    end
######################################################
    def get_customer_postal_code
        puts "What is your postal code?"
        print "> "
        set_customer_postal_code(gets.chomp)
    end
    def set_customer_postal_code(postal_code)
        @customer_info[:info_postal_code] = postal_code
    end
######################################################
    def get_customer_phone_number
        puts "What is your phone number?"
        print "> "
        set_customer_phone_number(gets.chomp)
    end
    def set_customer_phone_number(phone_number)
        @customer_info[:info_phone_number] = phone_number
    end    
######################## Everything above is Main Menu option 1 ##############################
######################## Everything below is Main Menu option 2 ##############################
    def gather_all_customers
        @customer_t = @customer_test.get_all_customers

        puts "************************SELECT A CUSTOMER************************"
        @customer_t.each_with_index do |value, index|
            puts "#{index+1}. #{value[2]}, #{value[1]}"
        end
        puts "*****************************************************************"
        print " >"

        @user_input = gets.chomp
        @user_input = @user_input.to_i
        @user_input = @user_input - 1
        
        @customer_t.each_with_index do |value, index|
            # puts "current #{index}"
            if index === @user_input
                # puts "THE INDEX OF YOUR SELECTION #{@user_input}"
                $active_customer = value
                @main_menu_controller.display_main_menu  
                puts "You have selected #{$active_customer[1]} to be the active customer"
                # puts "#{$active_customer}"
                puts "That isn't a valid option."
            end
        end
        gather_all_customers
    end
        


    private

        def to_titlecase(string)
            string.capitalize
        end

end
