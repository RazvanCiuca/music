class AddColumnsToTracks < ActiveRecord::Migration
  def change
    add_column :tracks, :bonus, :string
    add_column :tracks, :lyrics, :text
  end
end
