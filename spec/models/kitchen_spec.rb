require 'rails_helper'

RSpec.describe Kitchen do

  # If a user's kitchen is empty, it is time to go shopping!
  it "considers a kitchen with no ingredients to be empty" do
    kitchen = Kitchen.new
    expect(kitchen).to be_empty
  end

  it "knows that a kitchen with ingredients is not empty" do
    kitchen = Kitchen.new
    ingredient = Ingredient.new
    kitchen.ingredients << ingredient
    expect(kitchen).not_to be_empty
  end
  
end
