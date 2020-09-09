class CreatePokemons < ActiveRecord::Migration[5.2]
  def change
    create_table :pokemons do |t|
      t.string    :name,                null: false
      t.string    :nickname
      t.string    :gender,              null: false
      t.string    :ability,             null: false
      t.string    :nature,              null: false
      t.string    :item
      t.string    :move1,               null: false
      t.string    :move2
      t.string    :move3
      t.string    :move4
      t.string    :cs_hp,               null: false
      t.string    :cs_attack,           null: false
      t.string    :cs_defense,          null: false
      t.string    :cs_special_attack,   null: false
      t.string    :cs_special_defense,  null: false
      t.string    :cs_speed,            null: false
      t.string    :bs_hp,               null: false
      t.string    :bs_attack,           null: false
      t.string    :bs_defense,          null: false
      t.string    :bs_special_attack,   null: false
      t.string    :bs_special_defense,  null: false
      t.string    :bs_speed,            null: false
      t.string    :ev_hp
      t.string    :ev_attack
      t.string    :ev_defense
      t.string    :ev_special_attack
      t.string    :ev_special_defense
      t.string    :ev_speed
      t.timestamps
    end
  end
end
