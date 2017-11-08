require_relative '../models/order.rb'
require_relative 'main_menu_controller.rb'
require_relative 'payment_type_controller.rb'
require_relative '../models/order_product.rb'
require 'date'

class OrderController

	def initialize
		@main_menu_controller = MainMenuController.new
		@order_model = Order.new
		@product = Product.new
		@shopping_cart = Array.new 
		@order_product_model = OrderProduct.new
		@actual_cart = {:order_id => "#{@order_id}", :product_id => "#{@product_id}"} 
	end
	
	def check_open_order

		@open_orders = @order_model.get_active_orders_for_customer 

		if @open_orders.length < 1
			@order_id = @order_model.make_order_id
			make_an_order
			# @order_product_model.make_shopping_cart
		else 
			@order_id = @open_orders[0][0]
			make_an_order
			# @order_product_model.make_shopping_cart
		end
		
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
				@actual_cart[:product_id] = value[0]
				@actual_cart[:order_id] = @order_id
				puts @actual_cart
				@order_product_model.make_shopping_cart(@actual_cart)
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
			# puts @shopping_cart.inspect
		end
        puts "*************************************************************"

		@shopping_cart.each do |item|
			@order_total += item[2]
		end

		puts "Your order total is $#{@order_total}. Ready to purchase? (Y/N)"

		user_input = gets.chomp

		if user_input == "Y"
			order_pick_payment_type
		elsif user_input == "N"
			show_order
		else
			order_total_price
			puts "Please pick Y or N"
		end

	end

	def order_pick_payment_type

		@payment_type = @order_model.get_payment_types_via_active_customer

		puts "Please select a payment type: "

		@payment_type.each_with_index do |value, index|
			
			puts "#{index+1}. #{value[2]}"
			
		end

		user_payment_selection = gets.chomp
		user_payment_selection = user_payment_selection.to_i
		@payment_selection = user_payment_selection - 1
		
		@payment_type.each_with_index do |value, index|
			if index == @payment_selection
				@date = DateTime.now
				@payment_type_id = value[0]
				@order_model.insert_payment_type_into_order(@payment_type_id, @date)
				puts "PAYMENT TYPE ID: #{@payment_type_id}"
			end	
		end

	end

end