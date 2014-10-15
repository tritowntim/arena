class CreateMoves < ActiveRecord::Migration
  def change
    create_table :moves do |t|
      t.text :description
      t.references :power, index: true

      t.timestamps
    end
  end
end
