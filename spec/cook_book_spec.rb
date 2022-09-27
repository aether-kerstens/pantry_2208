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
  end
end
