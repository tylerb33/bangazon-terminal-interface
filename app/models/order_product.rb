require 'sqlite3'

class OrderProduct

	#attr_accessor

	def initialize(**new_order_product_hash)
		@order_id = new_order_product_hash[:info_order]
		@product_id = new_order_product_hash[:info_product]
	end

	def create_orders
	begin
		db = SQLite3::Database.open("../db/test_database_sprint2.sqlite")
		db.transaction
		db.execute("INSERT INTO Order_Products(Order_Id, Product_Id) VALUES (#{@order_id}, #{@product_id})")
		db.commit
	rescue SQLite3::Exception => e
		p "Exception with database query: #{e}"
		db.rollback
	end
	db.close
end

end