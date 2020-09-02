class Pokemon < ApplicationRecord
  has_one    :current_status
  has_one    :base_status
  has_one    :effort_value
  belongs_to :party
end
