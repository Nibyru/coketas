class Producto < ActiveRecord::Base
  attr_accessible :codigo, :color_ids, :descripcion, :marca_id, :nombre, :precio, :stock, :talle_ids, :foto
  
  validates :codigo, :marca_id, :nombre, :stock, :presence => true
  validates :codigo, :uniqueness => true

  belongs_to :marca
  has_many :fotos
  has_and_belongs_to_many :talles, :join_table => :productos_talles
  has_and_belongs_to_many :colors, :join_table => :colors_productos
  
  accepts_nested_attributes_for :talles
  accepts_nested_attributes_for :colors

end