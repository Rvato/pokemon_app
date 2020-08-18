class CreateParties < ActiveRecord::Migration[5.2]
  def change
    create_table :parties do |t|
      t.string     :party_id ,   null: false
      t.string     :party_name,  null: false
      t.timestamps
    end
  end
end
