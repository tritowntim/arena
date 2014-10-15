class AddBattlegroundToBattle < ActiveRecord::Migration
  def change
    add_reference :battles, :battleground
  end
end
