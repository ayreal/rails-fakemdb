class Actor < ApplicationRecord
  has_many :characters
  has_many :shows, through: :characters
  has_many :networks, through: :shows

  def fullname
    "#{self.first_name} #{self.last_name}"
  end
end
