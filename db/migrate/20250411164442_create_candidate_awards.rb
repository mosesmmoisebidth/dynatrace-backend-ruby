class CreateCandidateAwards < ActiveRecord::Migration[7.1]
  def change
    create_table :candidate_awards do |t|

      t.timestamps
    end
  end
end
