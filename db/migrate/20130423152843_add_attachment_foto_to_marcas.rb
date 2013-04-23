class AddAttachmentFotoToMarcas < ActiveRecord::Migration
  def self.up
    change_table :marcas do |t|
      t.has_attached_file :foto
    end
  end

  def self.down
    drop_attached_file :marcas, :foto
  end
end
