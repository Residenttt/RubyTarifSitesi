class CreateMalzeme < ActiveRecord::Migration[6.1]
  def change
    create_table :malzemes do |t|
      t.string :name
    end
  end
end
