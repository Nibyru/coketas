class Color < ActiveRecord::Base
  attr_accessible :nombre
  validates :nombre, :presence => true
  validates :nombre, :uniqueness => true
  has_many :fotos
  has_and_belongs_to_many :productos, :join_table => :colors_productos
end