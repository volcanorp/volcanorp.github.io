$(document).ready(function () {
	

	

	$("form").submit(function(event) {
		
		var formID = $(this).attr('id');
		if(formID != "donate")
		{
			

			event.preventDefault();
			$.ajax({
				type: $(this).attr('method'),
				url: $(this).attr('action'),
				data: new FormData(this),
				contentType: false,
				cache: false,
			
				processData: false,
				success: function(result) {
					
					console.log(result);
					json = jQuery.parseJSON(result);
					
					if (json.url) setTimeout(redirect, 2000, json.url);
					swal(json.header, json.message, json.status);
					
				}
			});
		}
	});	
});


function redirect(url) {
	  	window.location.href = url;
	}