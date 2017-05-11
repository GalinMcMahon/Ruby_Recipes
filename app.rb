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

post('/tags_recipe') do
  new_tag = (params.fetch("tag"))
  tag = Tag.create({tag: new_tag})
  @tags = Tag.all
  redirect '/recipe_form'
end

post('/tags') do
  new_tag = (params.fetch("tag"))
  tag = Tag.create({tag: new_tag})
  @tags = Tag.all
  redirect '/tags'
end

post('/recipes') do
  new_recipe = (params.fetch("recipe_name"))
  recipe = Recipe.create({recipe_name: new_recipe})
  @recipes = Recipe.all
  redirect '/recipes'
end

get('/tags/:id') do
  @tag = Tag.find(params.fetch("id"))
  erb(:tag)
end

patch('/rename_tag/:id') do
  tag = params.fetch("tag")
  @tag = Tag.find(params.fetch("id"))
  @tag.update({tag: tag})
  erb(:tag)
end

delete('/delete_tag/:id') do
  @tag = Tag.find(params.fetch('id'))
  @tag.delete
  @tags = Tag.all
  erb(:tags)
end


get("/ingredients") do
  @ingredients = Ingredient.all()
  erb(:ingredients)
end

post('/ingredients') do
  new_ingredient = (params.fetch("ingredient"))
  ingredient = Ingredient.create({ingredient: new_ingredient})
  @ingredients = Ingredient.all
  redirect '/ingredients'
end

get('/ingredients/:id') do
  @ingredient = Ingredient.find(params.fetch("id"))
  erb(:ingredient)
end

patch('/rename_ingredient/:id') do
  ingredient = params.fetch("ingredient")
  @ingredient = Ingredient.find(params.fetch("id"))
  @ingredient.update({ingredient: ingredient})
  erb(:ingredient)
end

delete('/delete_ingredient/:id') do
  @ingredient = Ingredient.find(params.fetch('id'))
  @ingredient.delete
  @ingredients = Ingredient.all
  erb(:ingredients)
end

# post "/recipes/:id" do
#   # binding.pry
#   @recipe = Recipe.find(params['id'])
#   tag_ids = params.fetch("recipe_tags")
#   tag_ids.map {|tag_id|}
#   @recipe.tags.push(Tag.find(tag_ids))
#   erb(:recipes)
# end
#
# get "/recipes/:id" do
#   @tags = Tag.all
#   redirect "/recipes/#{@recipe.id}"
# end
#
# get "/recipes/:id" do
#   @recipe = Recipe.find(params('id'))
#   @recipe.tags.push(Tag.find(tag_id))
#   # binding.pry
#   redirect "/recipes/#{@recipe.id}"
# end

# patch("/recipes/:id") do
#   @recipe = Recipe.find(params.fetch("id"))
#   binding.pry
#   # @recipe.update({tag_id: })
#     redirect "/recipes/<%=@recipe.id%>"
#   # erb(:recipes)
# end

# attaches tags to a recipe
post("/recipe_tags/:id") do
  recipe_tags = []
  @tags = params.first[1]
  @recipe = Recipe.find(params.fetch("id").to_i())
  @tags.each do |tag|
    @recipe.tags.push(Tag.find(tag.to_i))
    binding.pry
  end
  erb(:recipe_form)
end

# take us to the recipe_form.erb
get('/recipes/:id') do
  @recipe = Recipe.find(params.fetch("id"))
  @tags = Tag.all
  erb(:recipe_form)
end


 # tags.each do |tag| puts tag.to_i end
