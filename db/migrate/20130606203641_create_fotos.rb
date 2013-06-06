class CreateFotos < ActiveRecord::Migration
  def change
    create_table :fotos do |t|
      t.integer :producto_id
      t.has_attached_file :imagen

      t.timestamps
    end
  end
end
