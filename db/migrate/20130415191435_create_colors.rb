class CreateColors < ActiveRecord::Migration
  def up
  	create_table :colors do |t|
  		t.string :nombre
  	end
  end

  def down
  	drop_table :colors
  end
end
