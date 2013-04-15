class ModifiedProductIdTalles < ActiveRecord::Migration
  def change
    rename_column :talles, :productos_id, :producto_id
  end
end
