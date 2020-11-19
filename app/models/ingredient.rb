class Ingredient < ApplicationRecord
  has_many :doses
  has_many :cocktails, through: :doses
# => supprimer un ingrédient de la table

  # => si il n'est pas utilisé alors on delete
  # => s'il est utilisé dans un cocktail on ne supprime pas

  validates :name, presence: true, uniqueness: true
end
