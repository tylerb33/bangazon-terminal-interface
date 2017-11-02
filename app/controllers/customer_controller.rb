require_relative '../models/customer.rb'

class CustomerController

    def initialize
        @customer_info = Hash.new     
    end

    def gather_all_customer_info
        get_customer_first_name
        get_customer_last_name
        get_customer_street_address
        get_customer_city
        get_customer_state
        get_customer_postal_code
        get_customer_phone_number
    end

######################################################
    def get_customer_first_name
        puts "What's your first name?"
        print "> "
        set_customer_first_name(gets.chomp)
    end

    def set_customer_first_name(first_name)
        @customer_info[:info_first_name] = first_name
    end
######################################################
    def get_customer_last_name      
        puts "What's your last name? "
        print "> "
        set_customer_last_name(gets.chomp)
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
        set_customer_city(gets.chomp)
    end

    def set_customer_city(city)
        @customer_info[:info_city] = city
    end
######################################################
    def get_customer_state
        puts "In what state do you live?"
        print "> "
        set_customer_state(gets.chomp)
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


end
