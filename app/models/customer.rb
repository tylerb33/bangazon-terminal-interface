require 'sqlite3'
#require 'pry'

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
	begin

		db = SQLite3::Database.open("../db/test_database_sprint2.sqlite")
		db.transaction
		# db.execute("INSERT INTO Customers(First_Name, Last_Name, Active, Street_Address, City, State, Postal_Code, Phone_Number, Payment_Type_Id) 
        # 	VALUES(@first_name, @last_name, @active, @street_address, @city, @state, @postal_code, @phone, @payment);")
        # sql_query = "INSERT INTO Customers(First_Name, Last_Name, Active, Street_Address, City, State, Postal_Code, Phone_Number, Payment_Type_Id) VALUES ('#{@first_name}', '#{@last_name}', '#{@active}', '#{@street_address}', '#{@city}', '#{@state}', '#{@postal_code}', '#{@phone}', '#{@payment}' );"
        #binding.pry

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
			db = SQLite3::Database.open("../../db/test_database_sprint2.sqlite")
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

	def update_single_customer(colName, cusId)
		begin
			db = SQLite3::Database.open("../../db/test_database_sprint2.sqlite")
			db.execute("UPDATE Customers SET '#{colName}' = 'Pants' WHERE CustomerId = #{cusId}")
		rescue SQLite3::Exception => e
			p "Exception with database query: #{e}"
			db.rollback
		end
	end

end
