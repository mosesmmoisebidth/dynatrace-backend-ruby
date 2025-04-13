class CreateCandidateEntity < ActiveRecord::Migration[7.1]
  def change
    enable_extension 'pgcrypto' unless extension_enabled?('pgcrypto')
    create_table :candidate_entities id: :uuid, default -> { "gen_random_uuid()" } do |t|
      t.string :date_of_birth, null: false, default: "None"
      t.integer :age, null: false
      t.integer :gender, null: false, default: 2
      t.string :phone_number, null: false
      t.string :email, null: false
      t.string :languages, array: true, default: []
      t.string :job_title, null: false
      t.text :description, array: true, null: false, default: []
      t.text :social_networks, array: true, null: false, default: []

      t.timestamps
    end
  end
end
