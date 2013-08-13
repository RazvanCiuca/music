class User < ActiveRecord::Base
  attr_accessible :email, :password, :token, :admin

  has_many :notes, :dependent => :destroy,
    :class_name => "Note",
    :primary_key => :id,
    :foreign_key => :author_id



end
