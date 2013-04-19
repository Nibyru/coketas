class SiteController < ApplicationController
	def index
		@News = New.limit(5)
	end

	# def catalogo
	# 	@Productos = Producto.where(:marca_id => params[:id])
	# 	@Marcas = Marca.all
	# end

	def stock
		@Productos = Producto.all
	end
end
