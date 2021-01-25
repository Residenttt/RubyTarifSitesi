class CreateTarifMalzeme < ActiveRecord::Migration[6.1]
  def change
    create_table :tarif_malzemes do |t|
      t.integer :tarif_id
      t.integer :malzeme_id
    end
  end
end
