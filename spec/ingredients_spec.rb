require("spec_helper")

describe(Ingredient) do
  it("has many recipes") do
    test_ingredient = Ingredient.create({:ingredient => "Chicken"})
    test_recipe1 = Recipe.create({:recipe_name => "Chicken Sandwich"})
    test_recipe2 = Recipe.create({:recipe_name => "Buffalo Wings"})
    test_ingredient.recipes.push(test_recipe1, test_recipe2)
    expect(test_ingredient.recipes).to(eq([test_recipe1,test_recipe2]))
  end
end
