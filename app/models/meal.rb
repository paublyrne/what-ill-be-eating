class Meal
  attr_accessor :made, :scheduled_preparation_minutes, :actual_preparation_minutes
  def initialize(options = {})
    @made = false
    @scheduled_preparation_minutes = options[:scheduled_preparation_minutes] || 1
    @actual_preparation_minutes = @scheduled_preparation_minutes;
  end

  def made?
    made
  end

  def make(actual_minutes_spent = scheduled_preparation_minutes)
    self.made = true
    self.actual_preparation_minutes = actual_minutes_spent
  end
end
