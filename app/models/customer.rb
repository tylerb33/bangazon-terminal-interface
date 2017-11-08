require 'sqlite3'
#require 'pry'

# This Customer class is a model that deals with all-things-customer related. It has methods to add a new customer, get a single customer, get all customers & update a single customer.

class Customer
	attr_accessor :first_name, :last_name, :active, :street_address, :city, :state, :postal_code, :phone, :payment

	# This initialize is extracting the needed data from the passed-in hash and making available to all of the instance, so it will be available to our add method below.
	def initialize(**new_customer_hash)
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
		begin
			db = SQLite3::Database.open("../db/test_database_sprint2.sqlite")
			db.transaction

    	    db.execute("INSERT INTO Customers(First_Name, Last_Name, Active, Street_Address, City, State, Postal_Code, Phone_Number, Payment_Type_Id) VALUES ('#{@first_name}', '#{@last_name}', '#{@active}', '#{@street_address}', '#{@city}', '#{@state}', '#{@postal_code}', '#{@phone}', '#{@payment}' );")
    	    db.commit
		

			rescue SQLite3::Exception => e
			p "Exception with database query: #{e}"
			db.rollback
		end

		db.close

	end

	def get_all_customers

		begin
			db = SQLite3::Database.open("../db/test_database_sprint2.sqlite")
			db.execute("SELECT * FROM Customers")
		rescue SQLite3::Exception => e
			p "Exception with database query: #{e}"
		end

	end

	def get_single_customer(cusId)

		begin
			db = SQLite3::Database.open("../../db/test_database_sprint2.sqlite")
			db.execute("SELECT * FROM Customers WHERE CustomerId = #{cusId}")
		rescue SQLite3::Exception => e
			p "Exception with database query: #{e}"
		end

	end

	# The below takes 3 parameters in order to be as flexible as possible. By passing in a customer ID, the column name from the DB that you'd like to update & the new value of that field for the customer.
	def update_single_customer(colName, newValue, cusId)

		begin
			db = SQLite3::Database.open("../../db/test_database_sprint2.sqlite")
			db.execute("UPDATE Customers SET '#{colName}' = '#{newValue}' WHERE CustomerId = #{cusId}")
		rescue SQLite3::Exception => e
			p "Exception with database query: #{e}"
			db.rollback
		end
		
	end

end
