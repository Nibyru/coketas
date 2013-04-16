class CreateProductos < ActiveRecord::Migration
  def up
  	create_table :productos do |t|
  	  t.string :marca_id
  	  t.string :codigo
  	  t.string :nombre
  	  t.text :descripcion
  	  t.string :stock
  	  t.float :precio
  	  t.string :color_id
  	  t.string :talle_id

  	  t.timestamps
  	end
  end

  def down
  	drop_table :productos
  end
end
