class Meal
  attr_accessor :made
  def initialize
    @made = false
  end

  def made?
    made
  end

  def make
    self.made = true
  end

end
