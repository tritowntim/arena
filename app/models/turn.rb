class Turn < ActiveRecord::Base
  belongs_to :battle
  belongs_to :power
end
