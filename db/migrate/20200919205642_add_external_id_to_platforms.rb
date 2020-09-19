class AddExternalIdToPlatforms < ActiveRecord::Migration[6.0]
  def change
    add_column :platforms, :external_id, :string
    add_index :platforms, :external_id
  end
end
