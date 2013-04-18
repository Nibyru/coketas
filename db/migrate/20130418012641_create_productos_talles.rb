class CreateProductosTalles < ActiveRecord::Migration
  def change
    create_table :productos_talles, :id => false do |t|
      t.references :producto
      t.references :talle
    end
    add_index :productos_talles, :producto_id
    add_index :productos_talles, :talle_id
  end 
end
