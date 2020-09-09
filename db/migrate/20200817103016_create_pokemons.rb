class CreatePokemons < ActiveRecord::Migration[5.2]
  def change
    create_table :pokemons do |t|
      t.string     :name,        null: false
      t.string     :nickname
      t.string     :gender,      null: false
      t.string     :ability,     null: false
      t.string     :nature,      null: false
      t.string     :item
      t.string     :move1,       null: false
      t.string     :move2
      t.string     :move3
      t.string     :move4
      t.timestamps
    end
  end
end
