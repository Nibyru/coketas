class CreateMarcas < ActiveRecord::Migration
  def up
  	create_table :marcas do |t|
  		t.string :nombre
  		t.text :descripcion
  		
  	end
  end

  def down
  	drop_table :marcas
  end
end
