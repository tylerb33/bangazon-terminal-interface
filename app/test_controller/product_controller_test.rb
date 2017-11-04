require 'minitest/autorun' 

class ProductTest < Minitest::Test

    def setup
        @product_controller = ProductController.new
        # @product_test[:info_price] = 32.32
        # @product_test[:info_quantity] = 3
        # @product_test[:info_title] = "Kite"
        # @product_test[:info_description] = "It is diamond shaped"
    end

    
end