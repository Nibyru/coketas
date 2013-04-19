ActiveAdmin.register New do

	filter :titulo
	filter :info
	filter :created_at

    index do
  		selectable_column
		column :titulo
		column :info
		
		default_actions
	end

	show :title => :titulo do |ad|
      attributes_table do
        row :titulo
        row :info
		row :foto do
        	image_tag(ad.foto.url(:medium))
      	end
      end
      active_admin_comments
    end

	form :html => { :multipart => true } do |f|
	  f.inputs "Novedades" do
	    f.input :titulo
	    f.input :info
	  	f.input :foto
	  end
	  f.actions
	end

end
