class AddRamenComponentJoinTable < ActiveRecord::Migration[5.2]
  def change
    remove_column :component_recipes, :ramen_recipes_id

    create_table :ramen_component_join do |t|
      t.references :component_recipes, foreign_key: true
      t.references :ramen_recipes, foreign_key: true

      t.timestamps
    end
  end
end
