class Ingredient < ApplicationRecord
  validates :name, presence: true, uniqueness: true

  has_many :doses
  # dependent: :destroy
  # :dependent => :restrict_with_error
  #
  # SMART METHOD TO MAKE SURE YOU DON'T DELETE THE KIDS
  has_many :cocktails, through: :doses
  # before_destroy :check_for_doses

private

  # def check_for_doses
  #   if doses.count > 0
  #     errors.add_to_base("cannot delete ingredients while doses exist")
  #     return false
  #   end
  # end

end
