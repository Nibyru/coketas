ActiveAdmin.register Producto do
	filter :marca, :collection => Marca.all.map{ |m| [m.nombre ,m.id] }
	filter :codigo
	filter :stock
	filter :precio
	index do
		selectable_column
		column :codigo
		column :nombre
		column :marca, :sortable => :marca_id do |p|
			Marca.find(p.marca_id).nombre
		end
		column :descripcion
		column :stock
		column :precio, :sortable => :precio do |producto|
	      number_to_currency producto.precio, :unit => "$", :format => "%u%n"
	    end

		default_actions
	end

	show :title => :codigo do |ad|
      attributes_table do
        row :codigo
        row :nombre
        row :marca do |p|
			Marca.find(p.marca_id).nombre
		end
        row :descripcion
        row :stock
        row :precio do |producto|
	      number_to_currency producto.precio, :unit => "$", :format => "%u%n"
	    end
	    row :colors do |p|
	    	(p.colors.map{ |c| c.nombre}).join(' ')
	    end
	    row :talles do |p|
	    	(p.talles.map{ |t| t.nombre }).join(' ')
	    end

      end
      active_admin_comments
    end

	form do |f|
	  f.inputs "Detalles" do
	    f.input :marca, :collection => Marca.all.map{ |m| [m.nombre, m.id] }
	    f.input :codigo
	    f.input :nombre
	    f.input :descripcion
	    f.input :stock
	    f.input :precio
	    f.input :talles, as: :check_boxes, :collection => Talle.all.map{ |t| [t.nombre, t.id] }
	    f.input :colors, as: :check_boxes, :collection => Color.all.map{ |c| [c.nombre, c.id] }
	  end
	  f.actions
	end

	csv do
      	column :codigo
      	column :nombre
      	column :marca do |p|
			Marca.find(p.marca_id).nombre
		end
      	column :stock
      	column :precio
    end
end
