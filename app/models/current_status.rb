class CurrentStatus < ApplicationRecord
  has_one :pokemon, dependent: :destroy
end
