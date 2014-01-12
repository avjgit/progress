class CreateSubmissions < ActiveRecord::Migration
  def change
    create_table :submissions do |t|
      t.integer :step_id
      t.integer :user_id
      t.string :grade

      t.timestamps
    end
  end
end
