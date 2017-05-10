require("spec_helper")

describe(Recipe) do
  it("has many ingredients") do
    test_recipe = Recipe.create({:recipe_name => "Chicken Sandwich"})
    test_ingredient1 = Ingredient.create({:ingredient => "Chicken"})
    test_ingredient2 = Ingredient.create({:ingredient => "Bread"})
    test_recipe.ingredients.push(test_ingredient1, test_ingredient2)
    expect(test_recipe.ingredients).to(eq([test_ingredient1,test_ingredient2]))
  end

  it("has many tags") do
    test_recipe = Recipe.create({:recipe_name => "Chicken Sandwich"})
    test_tag1 = Tag.create({:tag => "Sandwiches"})
    test_tag2 = Tag.create({:tag => "Lunch"})
    test_recipe.tags.push(test_tag1, test_tag2)
    expect(test_recipe.tags).to(eq([test_tag1,test_tag2]))
  end


end
