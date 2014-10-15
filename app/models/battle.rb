class Battle < ActiveRecord::Base
  belongs_to :home_player, class: Player
  belongs_to :away_player, class: Player
  belongs_to :winning_player, class: Player
end
