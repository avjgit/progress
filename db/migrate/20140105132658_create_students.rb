class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.integer :track_id
      t.integer :user_id

      t.timestamps
    end

    add_index :students, :track_id
    add_index :students, :user_id
    add_index :students, [:track_id, :user_id], unique: true
  end
end
