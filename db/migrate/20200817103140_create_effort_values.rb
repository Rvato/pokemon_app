class CreateEffortValues < ActiveRecord::Migration[5.2]
  def change
    create_table :effort_values do |t|
      t.string     :ev_hp
      t.string     :ev_attack
      t.string     :ev_defense
      t.string     :ev_special_attack
      t.string     :ev_special_defense
      t.string     :ev_speed
      t.timestamps
    end
  end
end
