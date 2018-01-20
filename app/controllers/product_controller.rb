require_relative '../models/product.rb'
require_relative 'main_menu_controller.rb'

class ProductController

    attr_accessor :product_info, :product_model

    def initialize
        @product_info = Hash.new
        @product = Product.new
        @product2 = Product.new
        @main_menu = MainMenuController.new
    end

    # (below) this calls all of the methods so we can add just this to main menu
    def get_all_product_info

        get_product_price
        get_product_quantity
        get_product_title
        get_product_description

        @product_model = Product.new(@product_info) 
        @product_model.create_new_product 
        @main_menu.display_main_menu
                
    end
# Each of these are called in the main menu, and the gets takes the user input then the set methods puts the answer into a hash


    def get_product_price
        begin
        puts "How much does your product cost?"
        print "> "
        price_from_user = gets.chomp
        price_from_user = Float(price_from_user)
        set_product_price(price_from_user)

        rescue ArgumentError
            puts "Please enter numbers and decimals only!"
            retry
        end
    end

    def set_product_price(price)
        @product_info[:info_price] = price
    end

    def get_product_quantity
        begin
        puts "how many of this product do you have to sell?"
        print "> "
        quantity_from_user = gets.chomp
        quantity_from_user = Integer(quantity_from_user)
        set_product_quantity(quantity_from_user)

        rescue ArgumentError
            puts "Please enter integers only!"
            retry
        end
    end
 
    def set_product_quantity(quantity)
        @product_info[:info_quantity] = quantity
    end

    def get_product_title
        puts "What is the title of this product?"
        print "> "
        set_product_title(gets.chomp)
    end

    def set_product_title(title)
        @product_info[:info_title] = title
    end

    def get_product_description
        puts "What is the description of this product?"
        print "> "
        set_product_description(gets.chomp)
    end

    def set_product_description(description)
        @product_info[:info_description] = description
    end

    # ****************************************************************************

    def gather_all_products

        puts "Pick the corresponding number of the product you wish to delete."
        puts ">"
        @product = @product.get_products_via_active_customer
        @product.each_with_index do |value, index|
            puts "#{index+1}. #{value[4]}"
        end

        user_input = gets.chomp
        user_input = user_input.to_i
        actual_index = user_input - 1
        delete_product(@product[actual_index])
        
    end

    private

        def delete_product(product)
            puts "this is product parameter in delete #{product[0]}"
            @product2.delete_single_product(product[0])
            puts "Your product #{product[4]} has been deleted."
        end



end 