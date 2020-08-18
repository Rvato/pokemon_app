class CreateCurrentStatuses < ActiveRecord::Migration[5.2]
  def change
    create_table :current_statuses do |t|
      t.string     :cs_hp,               null: false
      t.string     :cs_attack,           null: false
      t.string     :cs_defense,          null: false
      t.string     :cs_special_attack,   null: false
      t.string     :cs_special_defense,  null: false
      t.string     :cs_speed,            null: false
      t.timestamps
    end
  end
end
