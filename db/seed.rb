require 'sqlite3'

begin

    db = SQLite3::Database.open("test_database_sprint2.sqlite")

    db.transaction

    db.execute("INSERT INTO Customers(First_Name, Last_Name, Active, Street_Address, City, State, Postal_Code, Phone_Number, Payment_Type_Id) VALUES ('Tyler', 'Barnett', 'false', '3000 Vanderbilt Pl.', 'Nashville', 'TN', '44333', '333-333-4444', 2)");

    db.execute("INSERT INTO Customers(First_Name, Last_Name, Active, Street_Address, City, State, Postal_Code, Phone_Number, Payment_Type_Id) VALUES ('Cody', 'Styles', 'false', '222 Elm St.', 'Birmingham', 'AL', '44555', '333-455-7777', 1)");

  	db.execute("INSERT INTO Customers(First_Name, Last_Name, Active, Street_Address, City, State, Postal_Code, Phone_Number, Payment_Type_Id) VALUES ('Jimbo', 'Fisher', 'false', '200 Fisher Lane', 'Cincinnati', 'OH', '40000', '222-222-2222', 2)");

    db.execute("INSERT INTO Customers(First_Name, Last_Name, Active, Street_Address, City, State, Postal_Code, Phone_Number, Payment_Type_Id) VALUES ('Victor', 'Oladipo', 'false', '0 Circle Centre', 'Indianapolis', 'IN', '42233', '812-683-4444', 3)");

    db.execute("INSERT INTO Customers(First_Name, Last_Name, Active, Street_Address, City, State, Postal_Code, Phone_Number, Payment_Type_Id) VALUES ('Tom', 'Coverdale', 'false', '222 20th Ave.', 'Santa Monica', 'CA', '97933', '444-111-1111', 4)");


    db.execute("INSERT INTO Orders(Customer_Id_FK, Payment_Type_Id, Order_Date) VALUES(1, 2, '2017-05-12')");
    db.execute("INSERT INTO Orders(Customer_Id_FK, Payment_Type_Id, Order_Date) VALUES(4, 3, '2011-01-01')");
    db.execute("INSERT INTO Orders(Customer_Id_FK, Payment_Type_Id, Order_Date) VALUES(3, 1, '1988-09-10')");


    db.execute("INSERT INTO Products(Price, Quantity, Title, Description, Seller_Id) VALUES (4.99, 55, 'Car', 'This car is very blue!', 2)");
    db.execute("INSERT INTO Products(Price, Quantity, Title, Description, Seller_Id) VALUES (100, 5, 'Basketball Hoop', 'This is 10 feet tall.', 3)");
    db.execute("INSERT INTO Products(Price, Quantity, Title, Description, Seller_Id) VALUES (25, 40, 'Hoop', 'A replacement rim for when you have dunked too much.', 4)");
    db.execute("INSERT INTO Products(Price, Quantity, Title, Description, Seller_Id) VALUES (35.99, 200, 'Raspberry Pi', 'Perfect for a Retropie setup.', 1)");
    db.execute("INSERT INTO Products(Price, Quantity, Title, Description, Seller_Id) VALUES (2.50, 1000, 'T-shirt', 'The cheapest shirt you will ever buy', 5)");

    db.execute("INSERT INTO Order_Products(Order_Id, Product_Id) VALUES(1, 1)");
    db.execute("INSERT INTO Order_Products(Order_Id, Product_Id) VALUES(1, 2)");
    db.execute("INSERT INTO Order_Products(Order_Id, Product_Id) VALUES(1, 3)");
    db.execute("INSERT INTO Order_Products(Order_Id, Product_Id) VALUES(1, 4)");
    db.execute("INSERT INTO Order_Products(Order_Id, Product_Id) VALUES(1, 5)");
    db.execute("INSERT INTO Order_Products(Order_Id, Product_Id) VALUES(2, 3)");
    db.execute("INSERT INTO Order_Products(Order_Id, Product_Id) VALUES(2, 3)");
    db.execute("INSERT INTO Order_Products(Order_Id, Product_Id) VALUES(2, 4)");
    db.execute("INSERT INTO Order_Products(Order_Id, Product_Id) VALUES(3, 5)");
    db.execute("INSERT INTO Order_Products(Order_Id, Product_Id) VALUES(3, 4)");
    db.execute("INSERT INTO Order_Products(Order_Id, Product_Id) VALUES(3, 3)");
    db.execute("INSERT INTO Order_Products(Order_Id, Product_Id) VALUES(3, 2)");
    db.execute("INSERT INTO Order_Products(Order_Id, Product_Id) VALUES(4, 3)");
    db.execute("INSERT INTO Order_Products(Order_Id, Product_Id) VALUES(4, 2)");
    db.execute("INSERT INTO Order_Products(Order_Id, Product_Id) VALUES(4, 4)");

    db.execute("INSERT INTO Payment_Types(Account_Number, Title, CustomerId) VALUES('4444333322221111', 'Visa', 1)");
    db.execute("INSERT INTO Payment_Types(Account_Number, Title, CustomerId) VALUES ('7899333322121111', 'MasterCard', 4)");
    db.execute("INSERT INTO Payment_Types(Account_Number, Title, CustomerId) VALUES ('1111111111111111', 'MasterCard', 5)");
    db.execute("INSERT INTO Payment_Types(Account_Number, Title, CustomerId) VALUES ('3333333333333333', 'Discover', 3)");
    db.execute("INSERT INTO Payment_Types(Account_Number, Title, CustomerId) VALUES ('233444555667', 'Checking', 2)");
    
    db.commit 
    db.close if db

    rescue SQLite3::Exception => e
        p "Exception with DB query: #{e}"
    
end