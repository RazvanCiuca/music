class Album < ActiveRecord::Base
  attr_accessible :band_id, :name, :recording

  has_many :tracks, :dependent => :destroy,
    :class_name => 'Track',
    :primary_key => :id,
    :foreign_key => :album_id

  belongs_to :band,
    :class_name => 'Band',
    :primary_key => :id,
    :foreign_key => :band_id
end
