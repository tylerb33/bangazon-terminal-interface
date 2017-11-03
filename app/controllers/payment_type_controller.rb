require_relative '../models/payment_type.rb'

class PaymentTypeController

attr_accessor :payment_type_info

def initialize 
    @payment_type_info = Hash.new
end

def gather_payment_info
    get_account_number
    get_account_type
end

    def get_account_number
        puts "What account number would you like to use?"
        print ">"
        set_account_number(gets.chomp)
    end

    def get_account_type
        puts "What account type would you like to use?"
        print ">"
        set_account_type(gets.chomp)
    end

    def set_account_number(account_number)
        @payment_type_info[:account_number] = account_number
    end

    def set_account_type(account_type)
        @payment_type_info[:account_type] = account_type
    end

end