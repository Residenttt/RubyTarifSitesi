class ChangeColumnName < ActiveRecord::Migration[6.1]
  def change
    rename_column :tarif_malzemes, :tarif_id, :tarifler_id
  end
end
