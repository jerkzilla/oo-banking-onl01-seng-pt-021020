class Transfer
  attr_accessor :sender, :receiver, :amount, :status

    def initialize(sender, receiver, amount)
      @sender = sender
      @receiver = receiver
      @amount = amount
      @status = "pending"
    end

    def both_valid?
      BankAccount.sender.valid? && BankAccount.receiver.valid?
    end


end
