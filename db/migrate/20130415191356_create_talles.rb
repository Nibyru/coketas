class CreateTalles < ActiveRecord::Migration
  def up
  	create_table :talles do |t|
  		t.string :nombre
  	end
  end

  def down
  	drop_table :talles
  end
end
