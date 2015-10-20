class Plan
  attr_accessor :meals
  def initialize
    @meals = []
  end

  def unplanned?
    meals.empty?
  end

  def total_meal_preparation_minutes
    meals.sum(&:preparation_minutes)
  end
end
