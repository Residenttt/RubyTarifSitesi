class AddUserIdTarifler < ActiveRecord::Migration[6.1]
  def change
    add_column :tariflers, :user_id, :integer
  end
end
