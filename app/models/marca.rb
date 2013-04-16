class Marca < ActiveRecord::Base
  attr_accessible :nombre, :descripcion
  has_many :producto
end