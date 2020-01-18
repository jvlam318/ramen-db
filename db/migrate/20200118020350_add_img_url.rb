class AddImgUrl < ActiveRecord::Migration[5.2]
  def change
    add_column :ramen_recipes, :image, :string
    add_column :component_recipes, :image, :string
  end
end
