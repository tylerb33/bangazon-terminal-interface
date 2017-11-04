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
            customer = CustomerController.new
            customer.gather_all_customer_info

            # Diplay the prompts for creating a new customer here.
        when "2"
            customer = CustomerController.new
          # List all active customers to choose from.
        when "3"
            payment = PaymentTypeController.new
            payment.gather_payment_info
            # Create a payment type.
        when "4"
            product = ProductController.new
            product.get_all_product_info
            # Add a product to sell.
        when "5"
            order = OrderController.new
            # Add product to shopping cart
        when "6"
            order = OrderController.new
            # Complete an order
        when "7"
            product = ProductController.new
            # Remove customer product
        when "8"
            product = ProductController.new
            # Update product information
        when "9"
            product = ProductController.new
            # Show stale products
        when "10"
            customer = CustomerController.new
            # Show customer revenue report
        when "11"
            # Should this be in the order controller or order_product controller?
            # Show overall product popularity
        when "12"
            # Need to investigate which method to run here in order to correctly exit the program.
            # Leave Bangazon!
        end
    end
end
