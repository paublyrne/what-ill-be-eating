require 'rails_helper'

RSpec.describe KitchenItem do

  it "knows it is gone when its quantity is zero" do
    kitchen_item = KitchenItem.new(quantity: 500)
    kitchen_item.use_some(500)
    expect(kitchen_item).to be_gone
  end

  it "knows when it is in the kitchen" do

  end

end
