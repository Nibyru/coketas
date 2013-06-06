class AddColorToFotos < ActiveRecord::Migration
  def change
  	add_column :fotos, :color_id, :integer
  end
end
