class CreatePowers < ActiveRecord::Migration
  def change
    create_table :powers do |t|
      t.text :name

      t.timestamps
    end
  end
end
