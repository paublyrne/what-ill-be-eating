class Kitchen
  attr_accessor :kitchen_items
  def initialize
    @kitchen_items = []
  end

  def empty?
    kitchen_items.empty?
  end

end
