class Producto < ActiveRecord::Base
  attr_accessible :codigo, :color_ids, :descripcion, :marca_id, :nombre, :precio, :stock, :talle_ids, :foto
  
  validates :codigo, :marca_id, :nombre, :stock, :foto, :presence => true
  validates :codigo, :uniqueness => true

  belongs_to :marca
  has_and_belongs_to_many :talles, :join_table => :productos_talles
  has_and_belongs_to_many :colors, :join_table => :colors_productos
  
  accepts_nested_attributes_for :talles
  accepts_nested_attributes_for :colors

  has_attached_file :foto,
  	:styles => { :medium => "624", :thumb => "202", :min => "100" },
    :storage => :dropbox,
    :dropbox_credentials => "#{Rails.root}/config/dropbox.yml",
    :dropbox_options => {
      :path => proc { |style| "producto/#{style}/#{id}_#{foto.original_filename}" }
    }
end