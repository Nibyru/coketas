class Contacto < ActiveRecord::Base
  attr_accessible :consulta, :direccion, :email, :nombre, :telefono
  validates :email, :nombre, :consulta, :presence => true
end
