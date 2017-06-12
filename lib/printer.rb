module Printer
  def pretty_print(transactions)
    p 'date || credit || debit || balance'
    transactions.reverse.each { |transaction|
      print transaction[:date].strftime('%D'), ' || '
      print transaction[:credit], ' || '
      print transaction[:debit], ' || '
      p transaction[:balance]
    }
  end
end
