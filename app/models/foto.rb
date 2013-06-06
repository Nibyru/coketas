class Foto < ActiveRecord::Base
  attr_accessible :imagen, :producto_id

  belongs_to :producto
  belongs_to :color
  validates :producto_id, :imagen, :presence => true

  has_attached_file :imagen,
  	:styles => { :medium => "624", :thumb => "202", :min => "100" },
    :storage => :dropbox,
    :dropbox_credentials => "#{Rails.root}/config/dropbox.yml",
    :dropbox_options => {
      :path => proc { |style| "producto/#{style}/#{id}_#{imagen.original_filename}" }
    }
end
