class AddProductIdTalles < ActiveRecord::Migration
  def change
    add_column :talles, :productos_id, :integer
  end
end
