class KitchenItem
  attr_accessor :quantity
  def initialize(options = {})
    @gone = false
    @quantity = options[:quantity]
  end

  def use_some(amount)
    self.quantity = self.quantity - amount
  end

  def gone?
    self.quantity === 0
  end
end
