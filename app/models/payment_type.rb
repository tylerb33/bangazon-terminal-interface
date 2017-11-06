require 'sqlite3'



class PaymentType
	attr_accessor :account_type, :account_number 

	# This initialize is extracting the needed data from the passed-in hash and making available to all of the instance, so it will be available to our add method below.
	def initialize(new_payment_type_hash)
		@account_type = new_payment_type_hash[:account_type]
		@account_number = new_payment_type_hash[:account_number]
	end


	def add_new_payment_type
		begin
			puts $active_customer[0]
			db = SQLite3::Database.open("../db/test_database_sprint2.sqlite")
			db.transaction
	        db.execute("INSERT INTO Payment_Types(Account_Number, Title, CustomerId) VALUES ('#{@account_number}', '#{@account_type}', #{$active_customer[0]});")
	        db.commit

			rescue SQLite3::Exception => e
			p "Exception with database query: #{e}"
			db.rollback
		end
	db.close
	end


	def get_single_payment(pmentId)
		begin
			db = SQLite3::Database.open("../../db/test_database_sprint2.sqlite")
			db.execute("SELECT * FROM Payment_Types WHERE Payment_Type_Id = #{pmentId}")

			rescue SQLite3::Exception => e
			p "Exception with database query: #{e}"
		end
	end

	def update_single_payment(colName, newVal, pmtId)
		begin
			db = SQLite3::Database.open("../../db/test_database_sprint2.sqlite")
			db.execute("UPDATE Payment_Types SET '#{colName}' = '#{newVal}' WHERE Payment_Type_Id = #{pmtId}")
			rescue SQLite3::Exception => e
			p "Exception with database query: #{e}"
		end
	end

	def get_all_payments
		begin
			db = SQLite3::Database.open("../../db/test_database_sprint2.sqlite")
			db.execute("SELECT * FROM Payment_Types")
		rescue SQLite3::Exception => e
			p "Exception with database query: #{e}"
		end

	end


end