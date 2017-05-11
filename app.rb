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
  @tags = Tag.all
  erb(:recipe_form)
end

post('/tags') do
  new_tag = (params.fetch("tag"))
  tag = Tag.create({tag: new_tag})
  @tags = Tag.all
  redirect '/tags'
end

get('/tags/:id') do
  @tag = Tag.find(params.fetch("id").to_i)
  erb(:tag)
end

patch('/rename_tag/:id') do
  tag = params.fetch("tag")
  @tag = Tag.find(params.fetch("id").to_i())
  @tag.update({tag: tag})
  erb(:tag)
end

delete('/delete_tag/:id') do
  @tag = Tag.find(params.fetch('id').to_i)
  @tag.delete
  @tags = Tag.all
  erb(:tags)
end
