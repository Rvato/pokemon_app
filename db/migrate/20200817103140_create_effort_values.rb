class CreateEffortValues < ActiveRecord::Migration[5.2]
  def change
    create_table :effort_values do |t|
      t.string     :ev_hp,               null: false
      t.string     :ev_attack,           null: false
      t.string     :ev_defense,          null: false
      t.string     :ev_special_attack,   null: false
      t.string     :ev_special_defense,  null: false
      t.string     :ev_speed,            null: false
      t.timestamps
    end
  end
end
