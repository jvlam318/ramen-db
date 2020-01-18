class ComponentRecipe < ApplicationRecord
  belongs_to :user
  belongs_to :ramen_recipes

  validates :component, :description, :ingredients, :directions, presence: true
end
