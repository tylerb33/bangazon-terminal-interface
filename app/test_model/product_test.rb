require 'minitest/autorun'
require_relative '../models/product.rb'

class ProductTest < Minitest::Test

    def setup
    # passing out hash into class Product
        @product = Product.new(

        { 
        :info_price => 32.32,  
        :info_quantity => 32, 
        :info_title => "yes", 
        :info_description => "blah blah"
        } 

        )
     
    end

    # Test for instance of the object
    
    def test_initialize
    	assert_raises ArgumentError do 
        Product.new
    	end
    end

    def test_initialize_for_product_arguments
    assert_instance_of Product, @product 
    end

    def test_create_product_sql
        new_product_id = @product.create_new_product
        assert_operator new_product_id, :>, 0
        # assert operator means that we're asserting this operator is true
    end

    def test_get_all_products
        all_products = @product.get_all_products
        assert_instance_of Array, all_products
    end

    def test_get_single_product
        single_product = @product.get_single_product(1)
        assert_instance_of Array, single_product
    end

    def test_updating_product
        update_product = @product.update_single_product("Title", 1)
        assert_instance_of Array, update_product
    end

end