require_relative '../models/order.rb'
require_relative 'main_menu_controller.rb'
require_relative 'payment_type_controller.rb'

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

        puts 'Enter "complete" to complete your order.' 
		puts "*************************************************************"
		puts ">"

		check_user_input(gets.chomp)
	end


		
	def check_user_input(user_input)
		if user_input == "complete"
			order_total_price
		else
			user_input = user_input.to_i
			user_input = user_input - 1
			user_input_is_selecting_index(user_input)
		end
	end
		
	def user_input_is_selecting_index(user_input)
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
		puts ">"
		
        make_an_order
	end

	def order_total_price

		@order_total = 0
		
		puts "************************YOUR ORDER***************************"
		@shopping_cart.each_with_index do |value, index|
			puts "#{index+1}. Product: #{value}"
		end
        puts "*************************************************************"

		@shopping_cart.each do |item|
			@order_total += item[2]
		end

		puts "Your order total is $#{@order_total}. Ready to purchase? (Y/N)"

	end

	def order_pick_payment_type

	end

end