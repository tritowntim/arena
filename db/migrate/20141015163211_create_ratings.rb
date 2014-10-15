class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
      t.references :player, index: true
      t.references :power, index: true
      t.integer :level

      t.timestamps
    end
  end
end
