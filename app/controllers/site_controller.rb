class SiteController < ApplicationController
	def index
		@News = New.limit(5)
	end

	def stock
		@Productos = Producto.all
	end
end
