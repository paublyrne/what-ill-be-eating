require 'rails_helper'

RSpec.describe Meal do
  describe "initialization" do
    let(:meal) { Meal.new }

    it "knows that a new meal not to be made" do
      expect(meal).not_to be_made
    end

  end
end
