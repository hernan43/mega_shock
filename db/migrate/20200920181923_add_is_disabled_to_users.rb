class AddIsDisabledToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :is_disabled, :boolean, default: false
    add_index :users, :is_disabled
  end
end
