// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require_tree .

$(document).ready(function() {
	if( document.documentElement.clientWidth < 767){
	    $('header').insertAfter('nav');
	}else{
	    $('nav').insertAfter('header');
	}

	$(window).resize(function() {
	    if( document.documentElement.clientWidth < 767){
	        $('header').insertAfter('nav');
	    }else{
	        $('nav').insertAfter('header');
	    }
	});
	$('#menu-btn, nav span').click(function() {
        $('#menu-btn').slideToggle('slow');
        $('nav ul').slideToggle('slow');
        $('nav span').slideToggle('slow');
    });

	$('#stock').dataTable( {
		"sScrollY": "200px",
		"bPaginate": false,
		"aaSorting": [[ 4, "desc" ]],
		"aoColumns": [
			null,
			{type: "select"},
			null,
			null,
			null,
			null
		],
		"oLanguage": {
			"sSearch": "Filtrar",
			"sZeroRecords": "No se encontraron coincidencias",
			"sInfo": "_TOTAL_ entradas"
		}
	} );
})