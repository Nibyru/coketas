class New < ActiveRecord::Base
  attr_accessible :titulo, :info, :foto
  validates :titulo, :info, :foto, :presence => true
  has_attached_file :foto, :styles => { :medium => "624x458>"}
end