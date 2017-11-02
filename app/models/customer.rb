require 'sqlite3'

class Customer

	def initialize(new_customer_hash)
		@first_name = new_customer_hash.
		@last_name = new_customer_hash. 
		@active = new_customer_hash. 
		@street_address = new_customer_hash. 
		@city = new_customer_hash. 
		@state = new_customer_hash. 
		@postal_code = new_customer_hash.
		@phone = new_customer_hash. 
		@payment = new_customer_hash. 

	end
		
	end
	def add_new_customer()

		db = SQLite3::Database.open("../../chinook/chinook_sqlite.sqlite")
		db.transaction
		db.execute("INSERT INTO Customer (First_Name, Last_Name, Active, Street_Address, City, State, Postal_Code, Phone_Number, Payment_Type_Id) 
			VALUES (new_customer_hash., new_customer_hash., new_customer_hash., new_customer_hash., new_customer_hash., new_customer_hash., new_customer_hash., new_customer_hash., new_customer_hash.);")

		db.close

		rescue SQLite3::Exception => e
		p "Exception with database query: #{e}"
		db.rollback
	end

	def get_active_customers
	end


end
