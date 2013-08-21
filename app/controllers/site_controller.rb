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

	def send_mail
		UserMailer.default_url_options[:host] = request.host_with_port
		@contacto = Contacto.new(params[:contacto])
		UserMailer.contact_confirmation(@contacto).deliver
		if @contacto.save
			flash[:notice] = "El e-mail se envio correctamente"
			redirect_to root_path
		else
			flash[:notice] = "Debes completar los campos"
			redirect_to contacto_path
		end
	end
end
