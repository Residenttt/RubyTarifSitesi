class CreateYorumlar < ActiveRecord::Migration[6.1]
  def change
    create_table :yorumlars do |t|
      t.text :aciklama
      t.integer :user_id
      t.integer :tarifler_id
      t.timestamps
    end
  end
end
