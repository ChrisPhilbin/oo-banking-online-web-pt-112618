class Transfer

  attr_reader :amount
  attr_accessor :sender, :receiver, :status

  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @amount = amount
    @status = "pending"
  end

  def valid?
    sender.valid? && receiver.valid?
  end

  def execute_transaction
    if valid? && sender.balance > 0 && status == "pending"
      sender.balance -= amount
      receiver.balance += amount
      self.status = "complete"
  end

end
