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
    let(:quick_meal) { Meal.new(scheduled_preparation_minutes: 15) }
    let(:medium_speed_meal) { Meal.new(scheduled_preparation_minutes: 30, actual_preparation_minutes: 60) }
    let(:slow_meal) { Meal.new(scheduled_preparation_minutes: 65, actual_preparation_minutes: 70) }

    before(:example) do
      plan.meals = [quick_meal, medium_speed_meal, slow_meal]
    end

    it "can calculate the total meal preparation time" do
      expect(plan.total_scheduled_preparation_minutes).to eq(110)
    end

    it "can calculate the remaining meal preparation time " do
      quick_meal.make
      expect(plan.remaining_scheduled_preparation_minutes).to eq(95)
    end

    it "can calculate the average scheduled preparation time so far this plan" do
      quick_meal.make
      slow_meal.make
      expect(plan.average_scheduled_preparation_time_so_far).to eq(40)
    end

    it "can calculate the difference between scheduled preparation time and actual preparation time so far this plan" do
      quick_meal.make(15)
      slow_meal.make(75)
      expect(plan.average_extra_preparation_time_spent).to eq(5)
    end
  end

end
