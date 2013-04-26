class New < ActiveRecord::Base
  attr_accessible :titulo, :info, :foto
  validates :titulo, :info, :foto, :presence => true
  has_attached_file :foto,
  	:styles => { :medium => "624x458>"},
    :storage => :dropbox,
    :dropbox_credentials => "#{Rails.root}/config/dropbox.yml",
    :dropbox_options => {
      :path => proc { |style| "new/#{style}/#{id}_#{foto.original_filename}" }
    }
end