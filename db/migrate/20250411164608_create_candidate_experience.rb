class CreateCandidateExperience < ActiveRecord::Migration[7.1]
  def change
    create_table :candidate_experiences do |t|

      t.timestamps
    end
  end
end
