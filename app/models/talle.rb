class Talle < ActiveRecord::Base
  attr_accessible :nombre
  has_and_belongs_to_many :productos, :join_table => :productos_talles
end