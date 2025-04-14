class CreateCandidateCertificates < ActiveRecord::Migration[7.1]
  def change
    enable_extension 'pgcrypto' unless extension_enabled?('pgcrypto')
    execute "CREATE SCHEMA IF NOT EXISTS users"
    create_table "users.candidate_certificates", id: :uuid, default: -> { "gen_random_uuid()" } do |t|
      t.references :candidate_entity, type: :uuid, null: false, foreign_key: { to_table: "users.candidate_entities" }
      t.string :title, null: false, default: "None"
      t.string :issued_by, null: false, default: "None"
      t.string :issued_date, null: false, default: "None"
      t.string :expiry_date, null: false, default: "None"
      t.text :additional_info, null: true, default: ''
      t.timestamps
    end
  end
end
