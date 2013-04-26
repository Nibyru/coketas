class Marca < ActiveRecord::Base
  attr_accessible :nombre, :descripcion, :foto

  validates :nombre, :foto, :presence => true
  validates :nombre, :uniqueness => true
  
  has_many :producto

  has_attached_file :foto,
  	:styles => { :standar => "224x168>"},
    :storage => :dropbox,
    :dropbox_credentials => "#{Rails.root}/config/dropbox.yml",
    :dropbox_options => {
      :path => proc { |style| "marca/#{style}/#{id}_#{foto.original_filename}" }
    }
end