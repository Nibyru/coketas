ActiveAdmin.register Talle do
	index do
  		selectable_column
		column :nombre

		default_actions
	end

	show do
		row :nombre
	end
end
