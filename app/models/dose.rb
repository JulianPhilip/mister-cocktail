class Dose < ActiveRecord::Base
  belongs_to :ingredient
  belongs_to :cocktail, dependent: :destroy
  validates :ingredient, :cocktail, presence: :true
end
