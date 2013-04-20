class Marca < ActiveRecord::Base
  attr_accessible :nombre, :descripcion
  validates :nombre, :presence => true
  validates :nombre, :uniqueness => true
  has_many :producto
end