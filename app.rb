require("bundler/setup")
Bundler.require(:default)
require('pry')

Dir[File.dirname(__FILE__) + '/lib/*.rb'].each { |file| require file }

get("/") do
  erb(:index)
end

get("/ingredients") do
  @ingredients = Ingredient.all()
  erb(:ingredients)
end

get("/recipes") do
  @recipes = Recipe.all()
  erb(:recipes)
end

get("/tags") do
  @tags = Tag.all()
  erb(:tags)
end

get("/recipe_form") do
  erb(:recipe_form)
end
