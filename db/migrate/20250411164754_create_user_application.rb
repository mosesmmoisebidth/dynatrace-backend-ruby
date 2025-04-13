class CreateUserApplication < ActiveRecord::Migration[7.1]
  def change
    create_table :user_applications do |t|

      t.timestamps
    end
  end
end
