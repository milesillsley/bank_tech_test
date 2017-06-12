require './lib/bank.rb'

describe 'Bank' do
  subject{ Bank.new }

  it 'can make a deposit of a specified value' do
    expect{ subject.deposit(1000) }.to change{ subject.check_balance }.by 1000
  end
  it 'can make a withdrawal of a specified value' do
    expect{ subject.withdraw(1000) }.to change{ subject.check_balance }.by -1000
  end
  it 'can keep track of the balance over multiple transactions' do
    subject.deposit(1000)
    subject.deposit(2000)
    expect(subject.check_balance).to be 3000
  end
  it 'has a statement, which logs all transactions' do
    subject.deposit(1000)
    subject.deposit(2000)
    subject.withdraw(500)
    expect(subject.statement.size).to be 3
  end
end
