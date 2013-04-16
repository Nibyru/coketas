class ModifiedTypes < ActiveRecord::Migration
  def change
  	remove_column :colors, :producto_id
  	remove_column :colors, :productos_id
  	remove_column :talles, :producto_id
  	remove_column :talles, :productos_id
  	add_column :colors, :producto_id, :string
    add_column :talles, :producto_id, :string
  end
end
