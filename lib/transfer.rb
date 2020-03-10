class Transfer
  attr_accessor :sender, :receiver, :amount, :status

    def initialize(sender, receiver, amount)
      @sender = sender
      @receiver = receiver
      @amount = amount
      @status = "pending"
    end

    def valid?
      receiver.valid? && sender.valid?
    end


    def execute_transaction
      if @sender.balance < @amount
        @status = "rejected"
        return "Transaction rejected. Please check your account balance."
      elsif @status = "complete"
        puts "Transaction executed."
      else
        @sender.deposit( @amount * -1)
        @receiver.deposit( @amount  )
        @status = "complete"
      end
      @balance - @amount
    end



end
