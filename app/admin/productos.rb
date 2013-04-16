ActiveAdmin.register Producto do
	index :selectable => true do
		column :codigo
		column :nombre
		column :marca
		column :descripcion
		column :stock
		column :precio do |producto|
	      number_to_currency producto.precio, :unit => "$", :format => "%u%n"
	    end

		default_actions
	end
	form do |f|
	  f.inputs "Detalles" do
	    f.input :marca, :collection => Marca.all.map{ |m| [m.nombre, m.id] }
	    f.input :codigo
	    f.input :nombre
	    f.input :descripcion
	    f.input :stock
	    f.input :precio
	    f.input :talle, as: :check_boxes, :collection => Talle.all.map{ |t| [t.nombre, t.id] }
	    f.input :color, as: :check_boxes, :collection => Color.all.map{ |c| [c.nombre, c.id] }
	  end
	  f.actions
	end
end
