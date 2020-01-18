class ChangeTypeColumn < ActiveRecord::Migration[5.2]
  def change
    rename_column :ramen_recipes, :type, :ramen_type
  end
end
