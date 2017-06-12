require './lib/bank.rb'

describe 'Bank' do
  subject{ Bank.new }

  it 'can make a deposit of a specified value' do
    expect{ subject.deposit(1000) }.to change{ subject.balance }.by 1000
  end
end
