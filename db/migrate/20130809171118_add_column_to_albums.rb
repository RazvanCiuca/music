class AddColumnToAlbums < ActiveRecord::Migration
  def change
    add_column :albums, :recording, :string
  end
end
