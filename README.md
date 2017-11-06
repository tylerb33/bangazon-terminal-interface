# Bangazon

## The Command Line Ordering System - a test driven application!

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes. See deployment for notes on how to deploy the project on a live system.

### Prerequisites

``` Ruby ``` for installation guide, see [the official Ruby download page](https://www.ruby-lang.org/en/downloads/).

### Installing

In order to get this running on your system, just follow the below steps. Note that this program runs completely on the command line of your system.

- Clone down this repository, which will create a new directory for this project on your system
- Within the terminal, CD into this newly created directory
- Navigate to the ``` db ``` sub-directory
- Run the following command to initialize the database ``` ruby database.rb ```
    * The database now exists in the database_sprint2.sqlite file!
    * Note: there is also a test initialization file that will create a test database for you if you'd like to run that as    
    well, they both exist within this ``` db ``` directory.
- Within this project navigate into the ``` app ``` directory and, from the Terminal and input ``` ruby main.rb ``` to launch the program. Below are the options you will be presented with:

```bash
*********************************************************
**  Welcome to Bangazon! Command Line Ordering System  **
*********************************************************
1. Create a customer account
2. Choose active customer
3. Create a payment option
4. Add product to shopping cart
5. Complete an order
6. See product popularity
7. Leave Bangazon!
>
```
- Follow the prompts on the screen to interact with the system.
- For an easy way to view the data within your database, it's suggested to use a tool such as [DB Browser](http://sqlitebrowser.org/).


## Running the tests

All tests for this application can be found in the ```test_model``` and ```test_controller``` directories to test the models and controllers respectively. For an example, to run tests for one of the controllers you would just navigate to the test_controller directory and run one of the files. For instance, you could run ``` ruby customer_controller_test.rb ```. The test will be run with ``` Minitest ``` and results will display within the terminal.


## Built With

* [Ruby](http://ruby-lang.org/) - The language used
* [SQLite3](https://www.sqlite.org/version3.html) - Library used to build the database
* [MiniTest](https://github.com/seattlerb/minitest) - The testing suite used


## Contributing

To contribute to this project, follow the steps below:

1. Go to the repository (https://github.com/Puddlemere-United/bangazon-terminal-interface).
1. Fork the repository to your Github account.
1. Clone the repository to your local directory.
1. Follow the "Installation" steps above to get the API up and running.
1. After your updates are made on a branch, create a pull request and fully fill out the PR template to let us know what has been updated.

## Issue Reporting

1. To report an issue, click the Issue tab within this repository on Github.
1. Click 'New issue'
1. Create an issue ticket clearly summarizing the issue in the Title field, and giving steps to recreate the issue in the 'Leave a comment' field.
    * Please be as specific as possible in order to allow for quick fixes.

## Authors

* **LaKeshia Johnson** - [Personal Github](https://github.com/LaKeshiaJohnson)
* **Jordan Berghofer** - [Personal Github](https://github.com/jordanberghofer)
* **Nora Moser** - [Personal Github](https://github.com/NoraMoser)
* **Clay Massie** - [Personal Github](https://github.com/clmassie1)
* **Tyler Barnett** - [Personal Github](https://github.com/tylerb33)




## Requirements

You will create a series of prompts that will allow the user to create various types of data in your ordering system.

1. Start with writing unit tests. As a group, determine the core functionality of the application. Define classes and methods that you think you need to build. Do that before writing the implementation code for core logic. DO NOT WRITE TESTS FOR THE USER INTERFACE (menu and prompts).
1. All classes and methods must be fully documented.
