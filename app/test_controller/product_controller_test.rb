require 'minitest/autorun' 
require_relative '../controllers/product_controller.rb'


class ProductTest < Minitest::Test

    def setup
        @product_controller = ProductController.new
    end

    def test_price_correct_class_type
        assert_kind_of Float, @product_controller.set_product_price(32.32)
    end
    
    def test_quantity_correct_class_type
        assert_kind_of Integer, @product_controller.set_product_quantity(3)
    end

    def test_title_correct_class_type
        assert_kind_of String, @product_controller.set_product_title("whatever")
    end

    def test_description_correct_class_type
        assert_kind_of String, @product_controller.set_product_description("blah")
    end
end