class Party < ApplicationRecord
  has_many                      :pokemons
  accepts_nested_attributes_for :pokemons

  validates :party_name, presence: true
end
