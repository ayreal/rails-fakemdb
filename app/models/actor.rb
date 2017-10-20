class Actor < ApplicationRecord
  has_many :characters
  has_many :shows, through: :characters
  has_many :networks, through: :shows
end
