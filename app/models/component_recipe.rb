class ComponentRecipe < ApplicationRecord
  belongs_to :user
   has_and_belongs_to_many :ramen_recipes

  validates :component, :description, :ingredients, :directions, presence: true
end
