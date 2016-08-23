class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.text :name
      t.text :civilization
      t.integer :cost
      t.integer :mana_val
      t.string :avatar
      t.string :type
      t.boolean :shield_trigger
      t.integer :power
      t.text :race
      t.boolean :evolution
      t.string :effects, array: true, :default => []

      t.timestamps null: false
    end
  end
end
