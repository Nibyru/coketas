class Producto < ActiveRecord::Base
  attr_accessible :codigo, :color_id, :descripcion, :marca_id, :nombre, :precio, :stock, :talle_id
  has_many :talle
  has_many :color
  belongs_to :marca
end