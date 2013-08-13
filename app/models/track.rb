class Track < ActiveRecord::Base
  attr_accessible :album_id, :duration, :title, :bonus, :lyrics

  belongs_to :album,
    :class_name => 'Album',
    :primary_key => :id,
    :foreign_key => :album_id

  has_many :notes, :dependent => :destroy,
    :class_name => "Note",
    :primary_key => :id,
    :foreign_key => :track_id

  has_one :band, :through => :album, :source => :band
end
