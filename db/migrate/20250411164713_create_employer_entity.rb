class CreateEmployerEntity < ActiveRecord::Migration[7.1]
  def change
    enable_extension 'pgcrypto' unless extension_enabled?('pgcrypto')
    execute "CREATE SCHEMA IF NOT EXISTS users"
    create_table "users.employer_entities", id: :uuid, default: -> { "gen_random_uuid()" } do |t|
      t.references :user, type: :uuid, null: false, foreign_key: { to_table: "users.users" }
      t.string :user_email, null: false
      t.text :phone_number, null: false, default: ''
      t.string :location, null: false, default: "None"
      t.timestamps
    end
  end
end