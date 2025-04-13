class CreateCandidateEducation < ActiveRecord::Migration[7.1]
  def change
    create_table :candidate_educations do |t|

      t.timestamps
    end
  end
end
