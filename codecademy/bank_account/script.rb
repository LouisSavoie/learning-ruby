class Account
    attr_reader :name, :balance
    def initialize(name, balance=100)
      @name = name
      @balance = balance
    end
  
    def display_balance(pin_number)
      pin_number == pin ? (puts "Balance: $#{@balance}.") : (puts pin_error)
    end
  
    def deposit(pin_number, amount)
      if pin_number == pin
        @balance += amount
        puts "Deposited #{amount}. New balance: $#{@balance}."
      else
        put pin_error
      end
    end
  
    def withdraw(pin_number, amount)
      if pin_number == pin && @balance >= amount
        @balance -= amount
        puts "Withdrew #{amount}. New balance: $#{@balance}."
      elsif pin_number == pin && @balance < amount
        puts "Account has insufficient funds to make this transaction."
      else
        puts pin_error
      end
    end
  
    private
  
    def pin
      @pin = 1234
    end
  
    def pin_error
      return "Access denied: incorrect PIN."
    end
  end
  
  checking_account = Account.new("Louis", 300000)
  checking_account.display_balance(1234)
  checking_account.deposit(1234, 20000)
  checking_account.withdraw(1234, 40000)