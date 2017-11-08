require 'minitest/autorun' 
require_relative '../controllers/product_controller.rb'

 
class ProductTest < Minitest::Test

    def setup
        @product_controller = ProductController.new
    end

    # The assert_equal tests are just to check that the values are the same format and can take that format

    def test_description_sets_correct_value
        @product_controller.set_product_description("brown")
        assert_equal "brown", @product_controller.product_info[:info_description]    
    end

    def test_title_sets_correct_value
        @product_controller.set_product_title("kite")
        assert_equal "kite", @product_controller.product_info[:info_title]    
    end

    def test_quantity_sets_correct_value
        @product_controller.set_product_quantity(3)
        assert_equal 3, @product_controller.product_info[:info_quantity]    
    end
    
end