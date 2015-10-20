require 'rails_helper'

RSpec.describe Plan do
  describe "initialization" do
    let(:plan) { Plan.new }
    let(:meal) { Meal.new }

    it "considers a plan with no meals to be unplanned" do
      expect(plan).to be_unplanned
    end

  end
  describe "estimates" do
    let(:plan) { Plan.new }
    let(:quick_meal) { Meal.new(preparation_minutes: 15) }
    let(:medium_speed_meal) { Meal.new(preparation_minutes: 30) }
    let(:slow_meal) { Meal.new(preparation_minutes: 65) }

    before(:example) do
      plan.meals = [quick_meal, medium_speed_meal, slow_meal]
    end

    it "can calculate the total meal preparation time" do
      expect(plan.total_meal_preparation_minutes).to eq(110)
    end

    it "can calculate the remaining meal preparation time " do
      quick_meal.make
      expect(plan.remaining_meal_preparation_minutes).to eq(95)
    end
  end

end
