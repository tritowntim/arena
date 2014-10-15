class CreateBattles < ActiveRecord::Migration
  def change
    create_table :battles do |t|
      t.date :begins_at
      t.integer :home_player_id
      t.integer :away_player_id

      t.timestamps
    end
  end
end
