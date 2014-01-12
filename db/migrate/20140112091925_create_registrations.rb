class CreateRegistrations < ActiveRecord::Migration
  def change
    create_table :registrations do |t|
      t.integer :track_id
      t.integer :user_id

      t.timestamps
    end
  end
end
