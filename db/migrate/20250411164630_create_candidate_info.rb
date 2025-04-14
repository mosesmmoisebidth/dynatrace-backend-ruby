class CreateCandidateInfo < ActiveRecord::Migration[7.1]
  def change
    enable_extension 'pgcrypto' unless extension_enabled?('pgcrypto')
    execute "CREATE SCHEMA IF NOT EXISTS users"
    create_table :candidate_infos, id: :uuid, default -> { "gen_random_uuid()" } do |t|
      t.references :candidate_entity, type: :uuid, null: false, foreign_key: { to_table: "users.candidate_entities" }
      t.string :title, null: false
      t.text :description, null: false, default: []
      t.timestamps
    end
  end
end
