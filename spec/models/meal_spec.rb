require 'rails_helper'

RSpec.describe Meal do
  describe "initialization" do
    let(:meal) { Meal.new }

    it "knows that a new meal is not made" do
      expect(meal).not_to be_made
    end

    it "knows that a meal that has been made is made" do
      meal.make
      expect(meal).to be_made
    end

  end
end
