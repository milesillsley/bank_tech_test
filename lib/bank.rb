class Bank
  def initialize
    @transactions = []
  end
  def check_balance
    @transactions.sum
  end
  def deposit(amount)
    @transactions.push(amount)
  end
  def withdraw(amount)
    @transactions.push(-amount)
  end
  def statement
    @transactions
  end
end
