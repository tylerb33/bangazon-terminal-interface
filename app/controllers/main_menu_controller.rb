require_relative 'customer_controller.rb'
require_relative 'order_controller.rb'
require_relative 'payment_type_controller.rb'
require_relative 'product_controller.rb'
require_relative 'order_product_controller.rb' 

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
            # Display the prompts for creating a new customer here.
            customer = CustomerController.new
            customer.gather_all_customer_info
        when "2"
          # List all active customers to choose from.
            customer = CustomerController.new
            customer.gather_all_customers
        when "3"
            # Create a payment type.
            payment = PaymentTypeController.new
            payment.gather_payment_info
        when "4"
            # Add a product to sell.
            if $active_customer
                product = ProductController.new
                product.get_all_product_info
            else 
                puts "You need an active customer!"
                display_main_menu 
            end
        when "5"
            # Add product to shopping cart
            if $active_customer
                order = OrderController.new
                order.check_open_order
            else
                puts "You need an active customer!"
                display_main_menu
            end

        when "6"
            # Complete an order
            if $active_customer
                order = OrderController.new
                order.check_open_order
            else
                puts "You need an active customer!"
                display_main_menu
            end
        when "7"
            # Remove customer product
            if $active_customer
                product = ProductController.new
                product.gather_all_products
            else
                puts "You need an active customer!"
            end
        when "8"
            # Update product information
            product = ProductController.new
        when "9"
            # Show stale products
            product = ProductController.new
        when "10"
            # Show customer revenue report
            customer = CustomerController.new
        when "11"
            # Should this be in the order controller or order_product controller?
            # Show overall product popularity
        when "12"
            # Need to investigate which method to run here in order to correctly exit the program.
            # Leave Bangazon!
        end
    end
end