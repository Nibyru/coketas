class CreateColores < ActiveRecord::Migration
  def up
  	create_table :colores do |t|
  		t.string :nombre
  	end
  end

  def down
  	drop_table :colores
  end
end
