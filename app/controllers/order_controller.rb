require_relative '../models/order.rb'
require_relative 'main_menu_controller.rb'

class OrderController
	attr_accessor

	def initialize
		@main_menu_controller = MainMenuController.new
		@order_model = Order.new
		@product = Product.new
		@shopping_cart = Array.new 
	end
     

	def make_an_order

		@product_test = @product.get_all_products
		
		puts "************************SELECT PRODUCT************************"
        @product_test.each_with_index do |value, index|
            puts "#{index+1}. Product: #{value[4]}, Quantity: #{value[3]}, Price: #{value[2]}, Description: #{value[5]}"
        end

        puts 'Enter "Completed" to complete your order.' 
        puts "*************************************************************"

    	user_input = gets.chomp
    	user_input = user_input.to_i
    	user_input = user_input - 1

    	@product_test.each_with_index do |value, index|
    		if index == user_input
    			@shopping_cart = @shopping_cart << value
    		end
    	end

    	show_order

     end


     def show_order 

        puts "************************YOUR ORDER***************************"
		
		@shopping_cart.each_with_index do |value, index|
			puts "#{index+1}. Product: #{value}"
		end

        puts "*************************************************************"
        make_an_order
        puts ">"
	end
end