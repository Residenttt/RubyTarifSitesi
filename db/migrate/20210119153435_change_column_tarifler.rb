class ChangeColumnTarifler < ActiveRecord::Migration[6.1]
  def change
    rename_column :tariflers, :email, :aciklama
    change_column :tariflers, :aciklama, :text
  end
end
