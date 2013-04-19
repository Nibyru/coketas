module ApplicationHelper
	def link_to_menu(destino)
		if destino == "stock"
			link_to_unless_current(content_tag(:li, "#{destino}", :class => "stock"), { :action => "#{destino}" })
		else
			link_to_unless_current(content_tag(:li, destino=="index" ? "inicio" : "#{destino}"), { :action => "#{destino}" })
		end
	end
end
