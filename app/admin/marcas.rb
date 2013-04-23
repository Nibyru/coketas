ActiveAdmin.register Marca do
    index do
  		selectable_column
		column :nombre
		column :descripcion
		
		default_actions
	end

	show do |ad|
      attributes_table do
        row :nombre
        row :descripcion
		row :foto do
        	image_tag(ad.foto.url(:normal))
      	end
      end
      active_admin_comments
    end

	form :html => { :multipart => true } do |f|
	  f.inputs "Marcas" do
	    f.input :nombre
	    f.input :descripcion
	  	f.input :foto
	  end
	  f.actions
	end

end
