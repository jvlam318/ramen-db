class CreateComponentRecipes < ActiveRecord::Migration[5.2]
  def change
    create_table :component_recipes do |t|
      t.string :component
      t.string :name
      t.text :description
      t.text :ingredients
      t.text :directions
      t.references :user, foreign_key: true
      t.references :ramen_recipes, foreign_key: true

      t.timestamps
    end
  end
end
