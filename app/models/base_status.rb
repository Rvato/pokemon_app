class BaseStatus < ApplicationRecord
  has_one :pokemon, dependent: :destroy
end
