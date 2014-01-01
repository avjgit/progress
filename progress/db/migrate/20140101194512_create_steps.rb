class CreateSteps < ActiveRecord::Migration
  def change
    create_table :steps do |t|
      t.references :track
      t.string :title
      t.text :description
      t.integer :weight
      t.integer :grade
      t.datetime :deadline

      t.timestamps
    end
    add_index :steps, :track_id
  end
end
