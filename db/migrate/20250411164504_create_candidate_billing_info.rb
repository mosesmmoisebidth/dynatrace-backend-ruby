class CreateCandidateBillingInfo < ActiveRecord::Migration[7.1]
  def change
    create_table :candidate_billing_infos do |t|

      t.timestamps
    end
  end
end
