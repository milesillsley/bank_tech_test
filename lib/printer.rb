module Printer
  def pretty_print(transactions)
    print 'date || credit || debit || balance'
    transactions.reverse.each { |transaction|
      if transaction[:credit]
        print %Q(
#{transaction[:date].strftime('%d/%m/%Y')} || #{'%.2f' % transaction[:credit].to_f} || || #{'%.2f' % transaction[:balance].to_f})
      else
        print %Q(
#{transaction[:date].strftime('%d/%m/%Y')} || || #{'%.2f' % transaction[:debit].to_f} || #{'%.2f' % transaction[:balance].to_f})
      end
    }
  end
end
