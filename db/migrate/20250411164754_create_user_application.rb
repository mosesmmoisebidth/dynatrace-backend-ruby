class CreateUserApplication < ActiveRecord::Migration[7.1]
  def change
    enable_extension 'pgcrypto' unless extension_enabled?('pgcrypto')
    execute "CREATE SCHEMA IF NOT EXISTS users"
    create_table "users.user_applications", id: :uuid, default: -> { "gen_random_uuid()" } do |t|
      t.references :user, type: :uuid, null: false, foreign_key: { to_table: "users.users" }
      t.timestamps
    end
  end
end
