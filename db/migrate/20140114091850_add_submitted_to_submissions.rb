class AddSubmittedToSubmissions < ActiveRecord::Migration
  def change
    add_column :submissions, :submitted, :boolean
  end
end
