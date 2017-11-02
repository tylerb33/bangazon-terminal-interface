require './models/customer.rb'

class CustomerController

	# def initialize
	# end

    def get_customer_info
        
        customer = Hash.new

        customer[:first_name] = get_customer_first_name

       
        
    end


        def get_customer_name
            puts "What's your first name?"
            print "> "
            first_name = gets.chomp
        	customer[:info_first_name] = first_name
            puts "What's your last name?"
            print "> "
            last_name = gets.chomp
            customer[:info_last_name] = last_name
        end


        # def get_customer_street_address
        #     puts "What's your street address?"
        #     print "> "
        #     street_address = gets.chomp
        #     customer << {"info_street_address" => street_address}
        # end

        # def get_customer_city
        #     puts "In what city do you live?"
        #     print "> "
        #     city = gets.chomp
        #     customer << {"info_city" => city}
        # end

        # def get_customer_state
        #     puts "In what state do you live?"
        #     print "> "
        #     state = gets.chomp
        #     customer << {"info_state" => state}
        # end

        # def get_customer_postal_code
        #     puts "What is your postal code?"
        #     print "> "
        #     postal_code = gets.chomp
        #     customer << {"info_postal_code" => postal_code}
        # end

        # def get_customer_phone_number
        #     puts "What is your phone number?"
        #     print "> "
        #     phone_number = gets.chomp
        #     customer << {"info_phone_number" => phone_number}
        # end

       
        # get_customer_street_address
        # get_customer_city
        # get_customer_state
        # get_customer_postal_code
        # get_customer_phone_number

        # puts customer_info
        # puts first_name
        # puts last_name
        # puts street_address
        # puts city
        # puts state
        # puts postal_code
        # puts phone_number

end
