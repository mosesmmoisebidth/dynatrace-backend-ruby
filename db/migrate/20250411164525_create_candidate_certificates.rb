class CreateCandidateCertificates < ActiveRecord::Migration[7.1]
  def change
    create_table :candidate_certificates do |t|

      t.timestamps
    end
  end
end
