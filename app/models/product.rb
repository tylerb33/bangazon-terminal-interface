require 'sqlite3'

class Product 
    attr_accessor :price, :quantity, :title, :description

    def initialize(**new_product_hash)
        @price = new_product_hash[:info_price]
        @quantity = new_product_hash[:info_quantity]
        @title = new_product_hash[:info_title]
        @description = new_product_hash[:info_description]
    end

    def create_new_product
        # this adds a new product to the database
        begin
            db = SQLite3::Database.open("../db/test_database_sprint2.sqlite")
            db.transaction
            db.execute("INSERT INTO Products(Price, Quantity, Title, Description, Seller_Id) VALUES ('#{@price}', '#{@quantity}', '#{@title}', '#{@description}', #{$active_customer[0]});")
            db.commit

        rescue SQLite3::Exception => e
            p "Exception with database query: #{e}"
            db.rollback
        end
        db.close
    end

    def get_all_products
        begin
            db = SQLite3::Database.open("../db/test_database_sprint2.sqlite")
            db.transaction
            db.execute("SELECT * FROM Products;")

        rescue SQLite3::Exception => e
            p "Exception with database query: #{e}"
        end
    end

    def get_single_product(custId)
        begin
            db = SQLite3::Database.open("../../db/test_database_sprint2.sqlite")
            db.transaction
            db.execute("SELECT * FROM Products where Product_Id = #{custId};")

        rescue SQLite3::Exception => e
            p "Exception with database query: #{e}"
        end
    end

    def update_single_product(colName, prodId)
        begin
            db = SQLite3::Database.open("../../db/test_database_sprint2.sqlite")
            db.transaction
            db.execute("UPDATE Products SET '#{colName}' = 'kite' WHERE Product_Id = #{prodId}")

        rescue SQLite3::Exception => e
            p "Exception with database query: #{e}"
        end
    end
end 