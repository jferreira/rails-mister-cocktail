class Cocktail < ApplicationRecord
  validates :name, presence: true, uniqueness: true

  # validates_associated :cocktail_id
  # validates_associated :ingredient_id

  # validates :cocktail_id, presence: true
  # validates :ingredient_id, presence: true

  has_many :doses, dependent: :destroy
  has_many :ingredients, through: :doses


end
