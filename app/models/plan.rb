class Plan
  attr_accessor :meals
  def initialize
    @meals = []
  end

  def unplanned?
    meals.empty?
  end
end
