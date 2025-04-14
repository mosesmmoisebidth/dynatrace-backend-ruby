class CreateUsers < ActiveRecord::Migration[7.1]
  def change
    enable_extension 'pgcrypto' unless extension_enabled?('pgcrypto')
    execute "CREATE SCHEMA IF NOT EXISTS users"
    create_table "users.users", id: :uuid, default: -> { "gen_random_uuid()" } do |t|
      t.string :fullnames, null: false
      t.string :phone_number
      t.string :email, null: false
      t.string :password, null: false
      t.integer :role, null: false, default: 0
      t.text :friends, array: true, default: []
      t.text :blocked, array: true, default: []
      t.text :requests, array: true, default: []
      t.integer :status, null: false, default: 0
      t.string :profile_photo, null: false, default: "None"
      t.timestamps
    end
  end
end 
