class ModifiedTables < ActiveRecord::Migration
  def up
  	drop_table :productos
  	drop_table :colors
  	drop_table :talles

  	create_table :productos do |t|
  	  t.integer :codigo
  	  t.string :nombre
  	  t.text :descripcion
  	  t.integer :stock
  	  t.float :precio
  	  t.integer :marca_id
  	  t.integer :color_id
  	  t.integer :talle_id

  	  t.timestamps
  	end
  	
  	create_table :talles do |t|
  	  t.string :nombre
  	  t.integer :producto_id
  	end
  	
  	create_table :colors do |t|
  	  t.string :nombre
  	  t.integer :producto_id
  	end
  end

  def down
  end
end
