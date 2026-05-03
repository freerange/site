class CreateShortenerMappings < ActiveRecord::Migration[7.2]
  def change
    create_table :shortener_mappings do |t|
      t.string :key, null: false
      t.string :url, null: false

      t.timestamps
    end

    add_index :shortener_mappings, :key, unique: true
  end
end
