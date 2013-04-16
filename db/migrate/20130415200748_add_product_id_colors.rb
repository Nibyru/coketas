class AddProductIdColors < ActiveRecord::Migration
  def change
    add_column :colors, :productos_id, :integer
  end
end
