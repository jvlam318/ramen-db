class CreateJoinTableRamenComponents < ActiveRecord::Migration[5.2]
  def change
    create_join_table :component_recipes, :ramen_recipes do |t|
      # t.index [:component_recipe_id, :ramen_recipe_id]
      # t.index [:ramen_recipe_id, :component_recipe_id]
    end
  end
end
