class SiteController < ApplicationController
	def index
		@News = New.limit(5)
	end

	def catalogo
		if params[:id] 
			@Productos = Producto.where(:marca_id => params[:id])
		else
			@Productos = Producto.where(:marca_id => Marca.first.id)
		end
		@Marcas = Marca.all
	end

	def stock
		@Productos = Producto.all
	end
end
