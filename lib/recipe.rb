class Recipe

  attr_reader :name, :ingredients_required, :ingredients

  def initialize(name)
    @name = name
    @ingredients_required = Hash.new(0)
    @ingredients = []
  end

  def add_ingredient(ingredient, amount)
    if @ingredients_required[ingredient] == nil
      @ingredients_required[ingredient] = amount
    else
      @ingredients_required[ingredient] += amount
    end
  end

  def total_calories
    @ingredients_required.sum do |ingredient, amount|
      ingredient.calories * amount
    end
  end
end
