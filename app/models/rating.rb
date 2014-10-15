class Rating < ActiveRecord::Base
  belongs_to :player
  belongs_to :power
end
