class Pokemon < ApplicationRecord
  has_one    :current_status
  has_one    :base_status
  has_one    :effort_value
  belongs_to :party
  
  accepts_nested_attributes_for :current_status
  accepts_nested_attributes_for :base_status
  accepts_nested_attributes_for :effort_value
end
