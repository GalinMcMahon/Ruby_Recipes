require("spec_helper")

describe(Tag) do
  it("has many recipes") do
    test_tag = Tag.create({:tag => "American"})
    test_recipe1 = Recipe.create({:recipe_name => "Chicken Sandwich"})
    test_recipe2 = Recipe.create({:recipe_name => "Buffalo Wings"})
    test_tag.recipes.push(test_recipe1, test_recipe2)
    expect(test_tag.recipes).to(eq([test_recipe1,test_recipe2]))
  end
end
