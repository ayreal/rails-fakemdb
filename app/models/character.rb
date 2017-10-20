class Character < ApplicationRecord
  belongs_to :actor
  belongs_to :show

  def make_show=(args)
    # #name, #rating, #network_id
    byebug
    #build_show(args)
  end
end
