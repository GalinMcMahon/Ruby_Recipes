class CreateRecipes < ActiveRecord::Migration[5.1]
  def change
    create_table(:recipes) do |r|
      r.column(:rating, :integer)
      r.column(:recipe_name, :string)

      r.timestamps()
    end
  end
end
