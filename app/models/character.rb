class Character < ApplicationRecord
  belongs_to :actor
  belongs_to :show

  def make_character=(args)
    build_character(args)
  end
end
