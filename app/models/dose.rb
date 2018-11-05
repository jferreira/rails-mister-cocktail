class Dose < ApplicationRecord

  validates :description, presence: true
  # validates_associated :cocktail
  # validates_associated :ingredient

  validates :cocktail, uniqueness: { scope: :ingredient }

  belongs_to :cocktail
  belongs_to :ingredient

end
