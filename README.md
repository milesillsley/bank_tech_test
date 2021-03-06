# Bank

This is a practice tech test set by Makers Academy.

The bank has been built with ruby and tested using rspec and the timecop gem.

### Instructions

1. clone this repo
2. `bundle install`
3. start your favourite ruby compatible runtime developer console
4. `require './lib/bank.rb'`
5. initialise a new Bank with `my_bank_example = Bank.new`
6. give yourself a load of money with `my_bank_example.deposit(99999999)`
7. withdraw it using `my_bank_example.withdraw(10)`
8. check the statement using `my_bank_example.print_statement`

## Specification

### Requirements

* You should be able to interact with the your code via a REPL like IRB or the JavaScript console.  (You don't need to implement a command line interface that takes input from STDIN.)
* Deposits, withdrawal.
* Account statement (date, amount, balance) printing.
* Data can be kept in memory (it doesn't need to be stored to a database or anything).

### Acceptance criteria

**Given** a client makes a deposit of 1000 on 10-01-2012
**And** a deposit of 2000 on 13-01-2012
**And** a withdrawal of 500 on 14-01-2012
**When** she prints her bank statement
**Then** she would see

```
date || credit || debit || balance
14/01/2012 || || 500.00 || 2500.00
13/01/2012 || 2000.00 || || 3000.00
10/01/2012 || 1000.00 || || 1000.00
```

## User stories

```
As a customer
So that I can keep ma monay safe
I would like to make a deposit to the bank

As a customer
So that I can spend my well earned cash
I would like to make a withdrawal

As a customer
So that i can see all of my frivolous expenditures to date
I would like to view an account statement
```
