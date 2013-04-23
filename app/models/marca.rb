class Marca < ActiveRecord::Base
  attr_accessible :nombre, :descripcion, :foto

  validates :nombre, :foto, :presence => true
  validates :nombre, :uniqueness => true
  
  has_many :producto

  has_attached_file :foto, :styles => { :normal => "224x168>"}
end