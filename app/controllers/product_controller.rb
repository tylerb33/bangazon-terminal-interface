require_relative '../models/product.rb'
require_relative 'main_menu_controller.rb'

class ProductController

    attr_accessor :product_info, :product_model

    def initialize
        @product_info = Hash.new
        @product_test = Product.new
        @product_test2 = Product.new
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
        puts "How much does your product cost?"
        puts ">"
        set_product_price(gets.chomp)
    end

    def set_product_price(price)
        @product_info[:info_price] = price
    end

    def get_product_quantity
        puts "how many of this product do you have to sell?"
        puts ">"
        set_product_quantity(gets.chomp)
    end
 
    def set_product_quantity(quantity)
        @product_info[:info_quantity] = quantity
    end

    def get_product_title
        puts "What is the title of this product?"
        puts ">"
        set_product_title(gets.chomp)
    end

    def set_product_title(title)
        @product_info[:info_title] = title
    end

    def get_product_description
        puts "What is the description of this product?"
        puts ">"
        set_product_description(gets.chomp)
    end

    def set_product_description(description)
        @product_info[:info_description] = description
    end

    # ***********************************************

    def gather_all_products

        @product_t = @product_test.get_products_via_active_customer
        puts @product_t.class
        @product_t.each_with_index do |value, index|
            puts "#{index+1}. #{value[4]}"
        end

        puts "pick the product you wish to delete."
        puts ">"

        user_input = gets.chomp
        user_input = user_input.to_i
        $delete_user_input = user_input - 1

        @product_t.each_with_index do |value, index|

            if index == $delete_user_input
                puts value[0]
                @product_test2.delete_single_product(value[0])
                puts "you have deleted that product"
            end 
            
        end
        
    end

end 