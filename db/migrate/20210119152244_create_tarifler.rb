class CreateTarifler < ActiveRecord::Migration[6.1]
  def change
    create_table :tariflers do |t|
      t.string :isim
      t.string :email
      t.timestamps
    end
  end
end
