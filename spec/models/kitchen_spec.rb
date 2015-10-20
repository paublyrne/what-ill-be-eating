require 'rails_helper'

RSpec.describe Kitchen do
  describe "initialization " do
    let(:kitchen) { Kitchen.new }
    let(:kitchen_item) { KitchenItem.new }

    # If a user's kitchen is empty, it is time to go shopping!
    it "considers a kitchen with no kitchen items to be empty" do
      expect(kitchen).to be_empty
    end

    it "knows that a kitchen with kitchen items is not empty" do
      kitchen.kitchen_items << kitchen_item
      expect(kitchen).not_to be_empty
    end

  end

end
