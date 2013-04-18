class CreateColorsProductos < ActiveRecord::Migration
  def change
    create_table :colors_productos, :id => false do |t|
      t.references :color
      t.references :producto
    end
    add_index :colors_productos, :color_id
    add_index :colors_productos, :producto_id
  end
end
