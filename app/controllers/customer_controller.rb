require './models/customer.rb'

class CustomerController


    def get_customer_info
        
        customerInfo = Hash.new
        customerInfo[:info_first_name] = get_customer_first_name
        customerInfo[:info_last_name] = get_customer_last_name
        customerInfo[:info_street_address] = get_customer_street_address
        customerInfo[:info_city] = get_customer_city
        customerInfo[:info_state] = get_customer_state
        customerInfo[:info_postal_code] = get_customer_postal_code
        customerInfo[:info_phone_number] = get_customer_phone_number
        
        puts customerInfo

    end

    def get_customer_first_name

        puts "What's your first name?"
        print "> "
        first_name = gets.chomp

    end

    def get_customer_last_name
        
        puts "What's your last name? "
        print "> "
        last_name = gets.chomp

    end

    def get_customer_street_address

        puts "What's your street address? "
        print "> "
        street_address = gets.chomp   

    end

    def get_customer_city

        puts "In what city do you live? "
        print "> "
        city = gets.chomp
    
    end

    def get_customer_state

        puts "In what state do you live? "
        print "> "
        state = gets.chomp
    
    end

    def get_customer_postal_code

        puts "What is your postal code? "
        print "> "
        postal_code = gets.chomp
    
    end

    def get_customer_phone_number

        puts "What is your phone number? "
        print "> "
        phone_number = gets.chomp
    
    end	


end
