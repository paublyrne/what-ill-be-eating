class Kitchen
  attr_accessor :ingredients
  def initialize
    @ingredients = []
  end

  def empty?
    ingredients.empty?
  end

end
