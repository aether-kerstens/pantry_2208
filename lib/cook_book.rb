class CookBook

  attr_reader :recipes

  def initialize
    @recipes = []
  end

  def add_recipe(recipe)
    @recipes << recipe
    @recipes.flatten!
  end

  def date
    time = Time.new
    time = time.month.to_s + "-" + time.day.to_s + "-" + time.year.to_s
    puts time
  end
  # def highest_calorie_meal
  #   @cookbook(recipe.total_calories).max
  # end
end
