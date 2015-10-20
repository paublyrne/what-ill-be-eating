class Meal
  attr_accessor :made, :preparation_minutes
  def initialize(preparation_minutes: 0)
    @made = false
    @preparation_minutes = preparation_minutes
  end

  def made?
    made
  end

  def make
    self.made = true
  end

end
