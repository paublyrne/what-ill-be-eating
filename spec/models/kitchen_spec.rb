require 'rails_helper'

RSpec.describe Kitchen do
  describe "initialization " do
    let(:kitchen) { Kitchen.new }
    let(:ingredient) { Ingredient.new }

    # If a user's kitchen is empty, it is time to go shopping!
    it "considers a kitchen with no ingredients to be empty" do
      expect(kitchen).to be_empty
    end

    it "knows that a kitchen with ingredients is not empty" do
      kitchen.ingredients << ingredient
      expect(kitchen).not_to be_empty
    end

  end

end
