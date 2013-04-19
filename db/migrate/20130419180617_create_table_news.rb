class CreateTableNews < ActiveRecord::Migration
  def up
  	create_table :news do |t|
  		t.string :titulo
  		t.text	 :info
		t.has_attached_file :foto

  	  	t.timestamps
  	end
  end

  def down
	drop_table :news
  end
end
