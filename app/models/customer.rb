require 'sqlite3'

class Customer
	attr_accessor :first_name, :last_name, :active, :street_address, :city, :state, :postal_code, :phone, :payment

	def initialize(new_customer_hash)
		@first_name = new_customer_hash[:info_first_name]
		@last_name = new_customer_hash[:info_last_name]
		@active = false 
		@street_address = new_customer_hash[:info_street_address]
		@city = new_customer_hash[:info_city]
		@state = new_customer_hash[:info_state]
		@postal_code = new_customer_hash[:info_postal_code]
		@phone = new_customer_hash[:info_phone_number]
		@payment = nil
	end
		

	def add_new_customer

		db = SQLite3::Database.open("../db/test_database_sprint2.sqlite")
		db.transaction
		# db.execute("INSERT INTO Customers(First_Name, Last_Name, Active, Street_Address, City, State, Postal_Code, Phone_Number, Payment_Type_Id) 
        # 	VALUES(@first_name, @last_name, @active, @street_address, @city, @state, @postal_code, @phone, @payment);")
        db.execute("INSERT INTO Customers(First_Name, Last_Name, Active, Street_Address, City, State, Postal_Code, Phone_Number, Payment_Type_Id) VALUES ('#{@first_name}', '#{@last_name}', '#{@active}', '#{@street_address}', '#{@city}', '#{@state}', '#{@postal_code}', '#{@phone}', '#{@payment}' );")
		db.close

		rescue SQLite3::Exception => e
		p "Exception with database query: #{e}"
		db.rollback
	end

	# def get_active_customers
	# end


end
