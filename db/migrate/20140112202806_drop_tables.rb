class DropTables < ActiveRecord::Migration
  def up
  	drop_table :students
  	drop_table :tracks_users
  end

  def down
  end
end
