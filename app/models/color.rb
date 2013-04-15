class Color < ActiveRecord::Base
  attr_accessible :nombre
  has_many :producto
end