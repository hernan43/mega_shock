class CreatePlatforms < ActiveRecord::Migration[6.0]
  def change
    create_table :platforms do |t|
      t.string :name
      t.string :slug
      t.string :year
      t.boolean :is_hidden

      t.timestamps
    end

    add_index :platforms, :name, unique: true
    add_index :platforms, :slug, unique: true
    add_index :platforms, :is_hidden, unique: false
  end
end
