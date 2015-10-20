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

  def total_scheduled_preparation_minutes
    meals.sum(&:scheduled_preparation_minutes)
  end

  def total_scheduled_preparation_time_so_far
    made_meals.sum(&:scheduled_preparation_minutes)
  end

  def total_actual_preparation_time_so_far
    made_meals.sum(&:actual_preparation_minutes)
  end

  def remaining_scheduled_preparation_minutes
    unmade_meals.sum(&:scheduled_preparation_minutes)
  end

  def average_scheduled_preparation_time_so_far
    total_scheduled_preparation_time_so_far.to_f  / made_meals.length
  end

  def average_actual_preparation_time_so_far
    total_actual_preparation_time_so_far.to_f / made_meals.length
  end

  def average_extra_preparation_time_spent
    average_actual_preparation_time_so_far.to_f - average_scheduled_preparation_time_so_far
  end

end
