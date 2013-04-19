class New < ActiveRecord::Base
  attr_accessible :titulo, :info, :foto

  has_attached_file :foto, :styles => { :medium => "624x458>"}
end