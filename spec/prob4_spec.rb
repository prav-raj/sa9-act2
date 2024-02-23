require_relative '../prob4'

RSpec.describe BankAccount do
    describe "#deposit" do
        it "increases the balance by the deposit amount" do
            account = BankAccount.new(100)
            bal = account.balance
            deposit_amt = 40
            account.deposit(deposit_amt)
            expect(account.balance).to eq(bal + deposit_amt)
        end
    end

    describe "#withdraw" do
        it "decreases the balance by the withdrawal amount if funds are
    available" do
            account = BankAccount.new(100)
            bal = account.balance
            withdraw_amt = 40
            account.withdraw(withdraw_amt)
            expect(account.balance).to eq(bal - withdraw_amt)
        end
        
        it "does not change the balance if insufficient funds" do
            account = BankAccount.new(100)
            bal = account.balance
            withdraw_amt = 400
            account.withdraw(withdraw_amt)
            expect(account.balance).to eq(bal)
        end
    end

    describe "#balance" do
        it "returns the current balance" do
            account = BankAccount.new(100)
            bal = account.balance
            expect(account.balance).to eq(bal)
        end
    end
end