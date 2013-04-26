class Producto < ActiveRecord::Base
  attr_accessible :codigo, :color_ids, :descripcion, :marca_id, :nombre, :precio, :stock, :talle_ids, :foto
  
  validates :codigo, :marca_id, :nombre, :precio, :stock, :foto, :presence => true
  validates :codigo, :uniqueness => true

  belongs_to :marca
  has_and_belongs_to_many :talles, :join_table => :productos_talles
  has_and_belongs_to_many :colors, :join_table => :colors_productos
  
  accepts_nested_attributes_for :talles
  accepts_nested_attributes_for :colors

  has_attached_file :foto,
  	:styles => { :medium => "624x458>", :thumb => "202x148>", :min => "100x85>" },
    :storage => :dropbox,
    :dropbox_credentials => "#{Rails.root}/config/dropbox.yml",
    :dropbox_options => {
      :path => proc { |style| "#{style}/#{id}_#{foto.original_filename}" }
    }
end