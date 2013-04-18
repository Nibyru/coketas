class AddAttachmentFotoToProductos < ActiveRecord::Migration
  def self.up
    change_table :productos do |t|
      t.has_attached_file :foto
    end
  end

  def self.down
    drop_attached_file :productos, :foto
  end
end
