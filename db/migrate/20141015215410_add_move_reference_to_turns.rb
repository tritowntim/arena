class AddMoveReferenceToTurns < ActiveRecord::Migration
  def change
    add_reference :turns, :move
  end
end
