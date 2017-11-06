require_relative '../models/product.rb'

class ProductController

    attr_accessor :product_info

    def initialize
        @product_info = Hash.new
    end

    # (below) this calls all of the methods so we can add just this to main menu
    def get_all_product_info
        get_product_price
        get_product_quantity
        get_product_title
        get_product_description

        @product_model = Product.new(@product_info) 
        @product_model.create_new_product 
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
        puts "how many of this product do you wish to buy?"
        puts ">"
        set_product_quantity(gets.chomp)
    end
 
    def set_product_quantity(quantity)
        @product_info[:info_quantity] = quantity
    end

    def get_product_title
        puts "What is the title of this project?"
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
end 