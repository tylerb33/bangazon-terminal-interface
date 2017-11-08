require 'sqlite3'



class Order


	def get_payment_types_via_active_customer
        begin
        db = SQLite3::Database.open("../db/test_database_sprint2.sqlite")
        customer_payment_type = db.execute("SELECT * FROM Payment_Types WHERE CustomerId = #{$active_customer[0]};")

        db.close
        return customer_payment_type
        rescue SQLite3::Exception => e
            p "Exception with database query: #{e}"
        end
    end

    def get_active_orders_for_customer
        begin
        db = SQLite3::Database.open("../db/test_database_sprint2.sqlite")
        customer_active_orders = db.execute("SELECT * FROM Orders WHERE Customer_Id_FK = #{$active_customer[0]} AND Payment_Type_Id = null;")

        db.close
        return customer_active_orders
        rescue SQLite3::Exception => e
            p "Exception with database query: #{e}"
        end
    end


    def make_order_id
        begin
        db = SQLite3::Database.open("../db/test_database_sprint2.sqlite")
        db.transaction
        db.execute("INSERT INTO Orders(Customer_Id_FK, Payment_Type_Id, Order_Date) VALUES (#{$active_customer[0]}, null, null);
            SELECT last_insert_rowid();")
        db.commit
        id = db.last_insert_row_id 
        db.close
        return id
        rescue SQLite3::Exception => e
            p "Exception with database query: #{e}"
            db.rollback
        end
    end


    def get_current_order_id
        begin
        db = SQLite3::Database.open("../db/test_database_sprint2.sqlite")
        db.transaction
        db.execute("INSERT INTO Orders(Customer_Id_FK, Payment_Type_Id, Order_Date) VALUES (#{$active_customer[0]}, null, null);
            SELECT last_insert_rowid();")
        db.commit
        id = db.last_insert_row_id 
        db.close
        return id
        rescue SQLite3::Exception => e
            p "Exception with database query: #{e}"
            db.rollback
        end
    end

=begin 
   def insert_payment_type_into_order
    	begin
    	db = SQLite3::Database.open("../db/test_database_sprint2.sqlite")
    	db.transaction
    	db.execute("INSERT into Orders(Order_Id, Customer_Id_FK, Payment_Type_Id, Order_Date) VALUES () ")

    end
=end
end