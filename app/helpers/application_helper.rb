module ApplicationHelper
	def link_to_menu(destino)
		link_to_unless_current(content_tag(:li, destino=="index" ? "inicio" : "#{destino}"), { :action => "#{destino}" })
	end
end
