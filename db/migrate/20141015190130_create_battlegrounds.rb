class CreateBattlegrounds < ActiveRecord::Migration
  def change
    create_table :battlegrounds do |t|
      t.text :name

      t.timestamps
    end
  end
end
