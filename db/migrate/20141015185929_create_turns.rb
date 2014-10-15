class CreateTurns < ActiveRecord::Migration
  def change
    create_table :turns do |t|
      t.references :battle, index: true
      t.references :power, index: true
      t.integer :home_player_rating_level
      t.integer :away_player_rating_level
      t.integer :chance

      t.timestamps
    end
  end
end
