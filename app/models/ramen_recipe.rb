class RamenRecipe < ApplicationRecord
  belongs_to :user
  has_many :component_recipes

  validates :description, :ramen_type, presence: true
  validates :name, uniqueness: true
end
