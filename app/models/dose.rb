class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient
  validates :cocktail_id, uniqueness: { scope: :ingredient_id }
  validates :cocktail, :description, :ingredient, presence: true
end
