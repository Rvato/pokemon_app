class CreatePokemons < ActiveRecord::Migration[5.2]
  def change
    create_table :pokemons do |t|
      t.string     :pokemon_id,  null: false
      t.string     :name,        null: false
      t.string     :nickname
      t.string     :gender,      null: false
      t.string     :ability,     null: false
      t.string     :nature,      null: false
      t.timestamps
    end
  end
end
