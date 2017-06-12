require './lib/bank.rb'

describe 'Bank' do
  subject{ Bank.new }

  it 'can make a deposit of a specified value' do
    expect{ subject.deposit(1000) }.to change{ subject.balance }.by 1000
  end
  it 'can make a withdrawal of a specified value' do
    expect{ subject.withdraw(1000) }.to change{ subject.balance }.by -1000
  end
  it 'can keep track of the balance over multiple transactions' do
    subject.deposit(1000)
    subject.deposit(2000)
    expect(subject.balance).to be 3000
  end
  it 'has a statement, which logs all transactions' do
    subject.deposit(1000)
    subject.deposit(2000)
    subject.withdraw(500)
    expect(subject.statement.size).to be 3
  end
  it 'can print out the satement in an aesthetically pleasing manner' do
    Timecop.freeze(Time.new(2012,01,10)) { subject.deposit(1000) }
    Timecop.travel(Time.new(2012,01,13))
    subject.deposit(2000)
    Timecop.travel(Time.new(2012,01,14))
    subject.withdraw(500)
    expect{subject.print_statement}.to output(
'date || credit || debit || balance
14/01/2012 || || 500.00 || 2500.00
13/01/2012 || 2000.00 || || 3000.00
10/01/2012 || 1000.00 || || 1000.00').to_stdout
  end
end
