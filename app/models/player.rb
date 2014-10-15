class Player < ActiveRecord::Base
  has_many :ratings
  has_many :powers, through: :ratings
end
