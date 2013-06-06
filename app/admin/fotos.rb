ActiveAdmin.register Foto do
  	filter :marca, :collection => Marca.all.map{ |m| [m.nombre ,m.id] }
	filter :codigo

	form :html => { :multipart => true } do |f|
	  f.inputs "Fotos" do
	    f.input :producto, :collection => Producto.all.map{ |m| [m.codigo, m.id] }
	  	f.input :color, :collection => Color.all.map{ |m| [m.nombre, m.id] }
	  	f.input :imagen
	  end
	  f.actions
	end

	show do |ad|
      attributes_table do
        row :producto_id do |p|
	    	Producto.find(p.producto_id).nombre
	    end
        row :codigo do |p|
	    	Producto.find(p.producto_id).codigo
	    end
        row :color do |p|
	    	Color.find(p.color_id).nombre if Color.find_by_id(p.color_id)
	    end
	    row :imagen do
        	image_tag(ad.imagen.url(:medium))
      	end
      end
      active_admin_comments
    end

   	index do
		selectable_column
		column :imagen do |p|
        	image_tag(p.imagen.url(:min))
      	end
		column :codigo do |p|
	    	Producto.find(p.producto_id).codigo
	    end
		column "Producto" do |p|
	    	Producto.find(p.producto_id).nombre
	    end
		column "Marca" do |p|
	    	Producto.find(p.producto_id).marca.nombre
	    end

		default_actions
	end

end
