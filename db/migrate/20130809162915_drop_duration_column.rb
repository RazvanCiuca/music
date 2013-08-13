class DropDurationColumn < ActiveRecord::Migration
  def change
    remove_column(:tracks, :duration)
  end

end
