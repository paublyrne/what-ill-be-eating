class Plan
  attr_accessor :meals
  def initialize
    @meals = []
  end

  def made_meals
    meals.select(&:made?)
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

  def average_meal_preparation_time_so_far
    made_meals.sum(&:preparation_minutes) / made_meals.length
  end

end
