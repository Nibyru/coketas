ActiveAdmin.register Producto do
	form do |f|
	  f.inputs "Detalles" do
	    f.input :marca, :collection => Marca.all.map{ |m| [m.nombre, m.id] }
	    f.input :codigo
	    f.input :nombre
	    f.input :descripcion
	    f.input :stock
	    f.input :precio
	    f.input :talle, :collection => Talle.all.map{ |t| [t.nombre, t.id] }
	    f.input :color, :collection => Color.all.map{ |c| [c.nombre, c.id] }
	  end
	  f.actions
	end
	show :title => :nombre do
  	end
end
