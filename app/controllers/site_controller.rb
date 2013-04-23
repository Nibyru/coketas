class SiteController < ApplicationController
	def index
		@News = New.limit(5)
	end

	def catalogo
		if params[:id] 
			@Productos = Producto.where(:marca_id => params[:id])
			@Marca_actual = Marca.find_by_id(params[:id])
		else
			@Productos = Producto.where(:marca_id => Marca.first.id) if Marca.first
			@Marca_actual = Marca.first
		end
		@Marcas = Marca.all
	end

	def stock
		@Productos = Producto.where("stock > 0")
	end
end
