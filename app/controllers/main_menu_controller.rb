require 'customer_controller.rb'
require 'order_controller.rb'
require 'payment_type_controller.rb'
require 'product_controller.rb'
require 'order_product_controller.rb' 

class MainMenuController
    def display_main_menu
        # Main menu presented to the user
        puts "*************************************************"
        puts "Welcome to Bangazon! Command Line Ordering System"
        puts "*************************************************"
        puts "1. Create a customer account"
        puts "2. Choose active customer"
        puts "3. Create a payment option"
        puts "4. Add product to sell"
        puts "5. Add product to shopping cart"
        puts "6. Complete an order"
        puts "7. Remove customer product"
        puts "8. Update product information"
        puts "9. Show stale products"
        puts "10. Show customer revenue report"
        puts "11. Show overall product popularity"
        puts "12. Leave Bangazon!"
        print "> "

        user_input = gets.chomp

        case user_input
        when "1"
            puts "you pressed 1."
            # customer = CustomerController.new
            # customer.get_customer_info
            # Call the method that will diplay the prompts for creating a new customer here.
        when "2"
            puts "you pressed 2."
          # Call the method that will diplay the prompts for choosing an active customer here.
        when "3"
            puts "you pressed 3."
            # Call the method that will diplay the prompts for creating a new customer here.
        when "4"
            puts "you pressed 4."
            # Call the method that will diplay the prompts for creating a new customer here.
        when "5"
            puts "you pressed 5."
            # Call the method that will diplay the prompts for creating a new customer here.
        when "6"
            puts "you pressed 6."
            # Call the method that will diplay the prompts for creating a new customer here.
        when "7"
            puts "you pressed 7."
            # Call the method that will diplay the prompts for creating a new customer here.
        when "8"
            puts "you pressed 8"
            # Call the method that will diplay the prompts for creating a new customer here.
        when "9"
            puts "you pressed 9"
            # Call the method that will diplay the prompts for creating a new customer here.
        when "10"
            puts "you pressed 10"
            # Call the method that will diplay the prompts for creating a new customer here.
        when "11"
            puts "you pressed 11"
            # Call the method that will diplay the prompts for creating a new customer here.
        when "12"
            puts "you pressed 12"
            # Call the method that will diplay the prompts for creating a new customer here.
        end
    end
end
