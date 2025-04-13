class CreateProfileViewEntity < ActiveRecord::Migration[7.1]
  def change
    create_table :profile_view_entities do |t|

      t.timestamps
    end
  end
end
