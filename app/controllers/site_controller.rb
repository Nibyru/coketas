class SiteController < ApplicationController
	def stock
		@Productos = Producto.all
	end
end
