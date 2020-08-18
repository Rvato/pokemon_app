class CreateMarkings < ActiveRecord::Migration[5.2]
  def change
    create_table :markings do |t|
      t.references    :pokemon, null: false, foreign_key: true
      t.timestamps
    end
  end
end
