class RamenRecipe < ApplicationRecord
  belongs_to :user
  has_and_belongs_to_many :component_recipes

  validates :description, :ramen_type, presence: true
  validates :name, uniqueness: true
end
