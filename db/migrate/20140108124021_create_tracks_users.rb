class CreateTracksUsers < ActiveRecord::Migration
  def change
    create_table :tracks_users do |t|
      t.belongs_to :track
      t.belongs_to :user
    end
  end
end
