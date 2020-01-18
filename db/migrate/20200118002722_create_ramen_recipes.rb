class CreateRamenRecipes < ActiveRecord::Migration[5.2]
  def change
    create_table :ramen_recipes do |t|
      t.string :name
      t.text :description
      t.string :type
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
