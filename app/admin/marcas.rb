ActiveAdmin.register Marca do
    index do
  		selectable_column
		column :nombre
		column :descripcion
		
		default_actions
	end
end
