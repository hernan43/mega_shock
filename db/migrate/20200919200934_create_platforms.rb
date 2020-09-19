class CreatePlatforms < ActiveRecord::Migration[6.0]
  def change
    create_table :platforms do |t|
      t.string :name
      t.string :slug
      t.string :year
      t.boolean :is_hidden

      t.timestamps
    end

    create_index :plaforms, :name, unique: true
    create_index :plaforms, :slug, unique: true
    create_index :plaforms, :is_hidden, unique: false
  end
end
