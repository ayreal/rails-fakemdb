class Show < ApplicationRecord
  belongs_to :network
  has_many :characters
  has_many :actors, through: :characters
end
