require './lib/printer'
class Bank
  include Printer

  def initialize
    @transactions = []
  end

  def balance
    return 0 if @transactions.empty?
    @transactions.slice(-1)[:balance]
  end

  def deposit(amount)
    @transactions.push({date: Time.new, credit: amount, balance: balance + amount})
  end

  def withdraw(amount)
    @transactions.push({date: Time.new, debit: amount, balance: balance - amount})
  end
  
  def statement
    @transactions
  end

  def print_statement
    pretty_print(@transactions)
  end
end
