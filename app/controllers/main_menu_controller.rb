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
		puts "> "

    	user_input = gets.chomp

    	case user_input
    	when "1"
    	  # Call the method that will diplay the prompts for creating a new customer here.
    	when "2"
    	  # Call the method that will diplay the prompts for choosing an active customer here.
    	end
	end
end
