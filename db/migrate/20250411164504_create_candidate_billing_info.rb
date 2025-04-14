class CreateCandidateBillingInfo < ActiveRecord::Migration[7.1]
  def change
    enable_extension 'pgcrypto' unless extension_enabled?('pgcrypto')
    execute "CREATE SCHEMA IF NOT EXISTS users"
    create_table "users.candidate_billing_infos" :candidate_billing_infos, id: :uuid, default -> { "gen_random_uuid()" } do |t|
      t.references :user, type: :uuid, null: false, foreign_key: { to_table: "users.users" }
      t.string :billing_contact, null: true
      t.string :street_address, null: false
      t.string :street_address2, null: true, default: "None"
      t.string :city, null: false
      t.string :province, null: true, default: "None"
      t.string :postal_code, null: true, default: "00000"
      t.string :phone_number, null: false
      t.string :fax_number, null: true, default: "None"
      t.string :email, null: false
      t.timestamps
    end
  end
end
