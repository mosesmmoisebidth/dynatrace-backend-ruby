class CreateCandidateInfo < ActiveRecord::Migration[7.1]
  def change
    create_table :candidate_infos do |t|

      t.timestamps
    end
  end
end
