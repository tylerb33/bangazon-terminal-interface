require 'sqlite3'

begin

	db = SQLite3::Database.open("test_sprint2_database.sqlite")

	db.transaction
	db.execute "CREATE TABLE Customers(CustomerId INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT, First_Name TEXT, Last_Name TEXT, Active BOOLEAN, Street_Address TEXT, City TEXT, State TEXT, Postal_Code INTEGER, Phone_Number BIGNUM, Payment_Type_Id INTEGER)"
	db.execute "CREATE TABLE Orders(Order_Id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT, Customer_Id_FK INTEGER, Payment_Type_Id INTEGER, Order_Date DATE)"
	db.execute "CREATE TABLE Products(Product_Id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT, Price FLOAT, Quantity INTEGER, Title TEXT, Description TEXT)"
	db.execute "CREATE TABLE Order_Products(Order_Product_Id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT, Order_Id INTEGER, Product_Id INTEGER)"
	db.execute "CREATE TABLE Payment_Types(Payment_Type_Id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT, Account_Number BIGNUM, Title TEXT)"
    
  	db.commit 
    db.close
end