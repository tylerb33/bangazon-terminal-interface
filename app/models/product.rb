require 'sqlite3'

class Product
    attr_accessor :price, :quantity, :title, :description

    def initialize(new_product_hash)
        @price = new_product_hash[:info_price]
        @quantity = new_product_hash[:info_quantity]
        @title = new_product_hash[:info_title]
        @description = new_product_hash[:info_description]
    end

    def create_new_product
        begin
            db = SQLite3::Database.open("../db/test_database_sprint2.sqlite")
        rescue
        end
    end
end 