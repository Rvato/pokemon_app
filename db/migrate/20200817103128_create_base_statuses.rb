class CreateBaseStatuses < ActiveRecord::Migration[5.2]
  def change
    create_table :base_statuses do |t|
      t.string     :bs_hp,               null: false
      t.string     :bs_attack,           null: false
      t.string     :bs_defense,          null: false
      t.string     :bs_special_attack,   null: false
      t.string     :bs_special_defense,  null: false
      t.string     :bs_speed,            null: false
      t.timestamps
    end
  end
end
