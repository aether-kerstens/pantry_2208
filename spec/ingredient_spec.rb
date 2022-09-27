require 'spec_helper.rb'

RSpec.describe Ingredient do
  before(:each) do
    @ingredient1 = Ingredient.new({name: "Cheese", unit: "oz", calories: 50})
  end
  
  describe '#initialize' do
    it 'can create ingredient' do
      expect(@ingredient1).to be_an_instance_of(Ingredient)
    end

    it 'can have name' do
      expect(@ingredient1.name).to eq("Cheese")
    end

    it 'can have a unit of measurement' do
      expect(@ingredient1.unit).to eq("oz")
    end

    it 'can have calories' do
      expect(@ingredient1.calories).to eq(50)
    end
  end
end
