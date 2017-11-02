require 'sqlite3'

begin

db = SQLite3::Database.new("test_sprint2_database.sqlite")

	db.transaction

	db.execute "CREATE TABLE Customers(CustomerId INTEGER PRIMARY KEY, First_Name TEXT, Last_Name TEXT, Active BOOLEAN, Street_Address TEXT, City TEXT, State TEXT, Postal_Code INTEGER, Phone_Number BIGNUM, Payment_Type_Id INTEGER)"
	db.execute "CREATE TABLE Orders(Order_Id INTEGER PRIMARY KEY, Customer_Id_FK INTEGER, Payment_Type_Id INTEGER, Order_Date DATE)"
	db.execute "CREATE TABLE Products(Product_Id INTEGER PRIMARY KEY, Price FLOAT, Quantity INTEGER, Title TEXT, Description TEXT)"
	db.execute "CREATE TABLE Order_Products(Order_Product_Id INTEGER PRIMARY KEY, Order_Id INTEGER, Product_Id INTEGER)"
	db.execute "CREATE TABLE Payment_Types(Payment_Type_Id INTEGER PRIMARY KEY, Account_Number BIGNUM, Title TEXT)"
    
  	db.commit 

    db.close
end