require 'sqlite3'

class Product 
    attr_accessor :price, :quantity, :title, :description, :delete_user_product

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

            # WHERE seller_Id = active_customer

            db.close
        rescue SQLite3::Exception => e
            p "Exception with database query: #{e}"
        end

    end

    def get_products_via_active_customer

        begin
            db = SQLite3::Database.open("../db/test_database_sprint2.sqlite")
            customer_product = db.execute("SELECT * FROM Products WHERE Seller_Id = #{$active_customer[0]};")

            db.close
            return customer_product
        rescue SQLite3::Exception => e
            p "Exception with database query: #{e}"
        end

    end

    def get_all_products

        begin
            db = SQLite3::Database.open("../db/test_database_sprint2.sqlite")
            db.transaction
            get_all_stuff = db.execute("SELECT * FROM Products;")

            db.close
            return get_all_stuff
        rescue SQLite3::Exception => e
            p "Exception with database query: #{e}"
        end

    end

    def delete_single_product(delete_user_product)

        puts "This is the parameter inside delete_single_product: #{delete_user_product}"

        begin
            db = SQLite3::Database.open("../db/test_database_sprint2.sqlite")
            db.transaction
            db.execute("DELETE FROM Products WHERE Product_Id = #{delete_user_product}")
            db.commit
            db.close
        rescue SQLite3::Exception => e 
            p "Exception with database query: #{e}"
        end

    end

    def get_single_product(custId)

        begin
            db = SQLite3::Database.open("../../db/test_database_sprint2.sqlite")
            db.transaction
            db.execute("SELECT * FROM Products where Product_Id = #{custId};")

            db.close
        rescue SQLite3::Exception => e
            p "Exception with database query: #{e}"
        end

    end

    def update_single_product(colName, newValue, prodId)

        begin
            db = SQLite3::Database.open("../../db/test_database_sprint2.sqlite")
            db.transaction
            db.execute("UPDATE Products SET '#{colName}' = '#{newValue}' WHERE Product_Id = #{prodId}")

            db.close
        rescue SQLite3::Exception => e
            p "Exception with database query: #{e}"
        end

    end
    
end 