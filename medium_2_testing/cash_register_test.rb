require 'minitest/autorun'

require "minitest/reporters"
Minitest::Reporters.use!

require_relative 'cash_register'
require_relative 'transaction'

class CashRegisterTest < Minitest::Test
  def test_accept_money
    starting_cash = 50
    transaction_cash = 10
    test_register = CashRegister.new(starting_cash)
    test_transaction = Transaction.new(transaction_cash)
    test_transaction.amount_paid = 10
    test_register.accept_money(test_transaction)
    assert_equal(starting_cash + transaction_cash, test_register.total_money)
  end

  def test_change
    starting_cash = 50
    transaction_cost = 10
    test_register = CashRegister.new(starting_cash)
    test_transaction = Transaction.new(transaction_cost)
    test_transaction.amount_paid = 20
    test_register.change(test_transaction)
    assert_equal(test_transaction.amount_paid - transaction_cost, test_register.change(test_transaction))
  end

  def test_give_receipt
    output = <<~OUTPUT.chomp
    You've paid $10.

    OUTPUT
    starting_cash = 50
    transaction_cost = 10
    test_register = CashRegister.new(starting_cash)
    test_transaction = Transaction.new(transaction_cost)
    test_transaction.amount_paid = 20
    assert_output(output){ test_register.give_receipt(test_transaction)}
  end

  def test_prompt_for_payment
    starting_cash = 50
    transaction_cost = 10
    test_register = CashRegister.new(starting_cash)
    test_transaction = Transaction.new(transaction_cost)
    test_payment = StringIO.new('40\n')
    output = StringIO.new
    test_transaction.prompt_for_payment(input: test_payment, output: output)
    #test_register.change(test_transaction)
    assert_equal(40, test_transaction.amount_paid)
  end
end