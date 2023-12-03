class Hero < ApplicationRecord
  validates :name, :power, presence: true
end
