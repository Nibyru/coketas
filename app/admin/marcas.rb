ActiveAdmin.register Marca do
    index do
  		selectable_column
		column :nombre
		column :descripcion
		
		default_actions
	end

	show do
		row :nombre
		row :descripcion
	end
end
