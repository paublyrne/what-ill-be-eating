class Plan
  attr_accessor :meals
  def initialize
    @meals = []
  end

  def unmade_meals
    meals.reject(&:made?)
  end

  def unplanned?
    meals.empty?
  end

  def total_meal_preparation_minutes
    meals.sum(&:preparation_minutes)
  end

  def remaining_meal_preparation_minutes
    unmade_meals.sum(&:preparation_minutes)
  end
end
