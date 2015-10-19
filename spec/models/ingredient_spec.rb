require 'rails_helper'

RSpec.describe Ingredient do
  it "knows it is gone when its quantity is zero" do
    ingredient = Ingredient.new(quantity: 500)
    ingredient.use_some(500)
    expect(ingredient).to be_gone
  end
end
