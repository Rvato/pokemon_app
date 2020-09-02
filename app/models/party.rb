class Party < ApplicationRecord
  has_many  :pokemons

  validates :party_name, presence: true
end
