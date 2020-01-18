class AddRamenRecipeAssemblColumn < ActiveRecord::Migration[5.2]
  def change
    add_column :ramen_recipes, :assembly, :text
  end
end
