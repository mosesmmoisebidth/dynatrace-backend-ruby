class CreateEmployerEntity < ActiveRecord::Migration[7.1]
  def change
    create_table :employer_entities do |t|

      t.timestamps
    end
  end
end
