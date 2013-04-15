class Talle < ActiveRecord::Base
  attr_accessible :nombre
  has_many :producto
end