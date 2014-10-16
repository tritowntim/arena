class Player < ActiveRecord::Base
  has_many :ratings
  has_many :powers, through: :ratings
  has_many :home_battles, foreign_key: :home_player_id, class: Battle
  has_many :away_battles, foreign_key: :away_player_id, class: Battle
end
