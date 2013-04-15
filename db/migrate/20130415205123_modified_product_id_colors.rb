class ModifiedProductIdColors < ActiveRecord::Migration
  def change
    rename_column :colors, :productos_id, :producto_id
  end
end
