class Transfer

  attr_reader :amount
  attr_accessor :sender, :receiver

  def initialize(sender, receiver, amount)
    @sender = BankAccount.new(sender)
  end

end
