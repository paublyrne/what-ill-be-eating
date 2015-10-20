require 'rails_helper'

RSpec.describe Plan do
  describe "initialization" do
    let(:plan) { Plan.new }
    let(:meal) { Meal.new }

    it "considers a plan with no meals to be unplanned" do
      expect(plan).to be_unplanned
    end


  end


end
