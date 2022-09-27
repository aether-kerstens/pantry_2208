require 'spec_helper.rb'

RSpec.describe CookBook do
  before(:each) do
    @recipe1 = Recipe.new("Mac and Cheese")
    @recipe2 = Recipe.new("Cheese Burger")
    @cookbook = CookBook.new
  end
  describe '#initialize' do
    it 'can create a cookbook' do
      expect(@cookbook).to be_an_instance_of(CookBook)
    end

    it 'can check cookbook recipes' do
      expect(@cookbook.recipes).to eq([])
    end

    it 'can add recipes to the cookbook' do
      @cookbook.add_recipe(@recipe1)
      @cookbook.add_recipe(@recipe2)
      expect(@cookbook.recipes).to eq([@recipe1, @recipe2])
    end

    xit 'declares the date' do
      expect(@cookbook.date).to eq("9-27-2022")
      # this test is completely relient on the expectation being the date of which you test it on due to how the time method works
    end
  end
  describe 'iteration 3 methods' do
    before(:each) do
      @pantry = Pantry.new
      @cookbook = CookBook.new
      @ingredient1 = Ingredient.new({name: "Cheese", unit: "C", calories: 100})
      @ingredient2 = Ingredient.new({name: "Macaroni", unit: "oz", calories: 30})
      @recipe1 = Recipe.new("Mac and Cheese")
      @recipe1.add_ingredient(@ingredient1, 2)
      @recipe1.add_ingredient(@ingredient2, 8)
      @ingredient3 = Ingredient.new({name: "Ground Beef", unit: "oz", calories: 100})
      @ingredient4 = Ingredient.new({name: "Bun", unit: "g", calories: 75})
      @recipe2 = Recipe.new("Cheese Burger")
      @recipe2.add_ingredient(@ingredient1, 2)
      @recipe2.add_ingredient(@ingredient3, 4)
      @recipe2.add_ingredient(@ingredient4, 1)
      @recipe1.total_calories
      # => 440
      @recipe2.total_calories
      # => 675
      @cookbook.add_recipe(@recipe1)
      @cookbook.add_recipe(@recipe2)
    it 'can list ingredient names' do
      expect(@cookbook.ingredients).to eq(["Cheese", "Macaroni", "Ground Beef", "Bun"])
    end
    it 'can show the meal with the highest total calories'
      expect(@cookbook.highest_calorie_meal).to eq(@recipe2)
    end
  end
end
