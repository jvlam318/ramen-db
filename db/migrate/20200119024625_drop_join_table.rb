class DropJoinTable < ActiveRecord::Migration[5.2]
  def change
    drop_table :ramen_component_join
  end
end
