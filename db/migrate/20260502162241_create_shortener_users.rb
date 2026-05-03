class CreateShortenerUsers < ActiveRecord::Migration[7.2]
  def change
    create_table :shortener_users do |t|
      t.string :email, null: false
      t.string :password_digest, null: false

      t.timestamps
    end

    add_index :shortener_users, :email, unique: true
  end
end
