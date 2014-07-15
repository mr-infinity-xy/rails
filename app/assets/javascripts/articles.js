var ready;
ready = function() {

	$('#search').keyup(function(event){
		$.ajax({
						url: 'http://localhost:3000/auto_suggest',
						data: { search: $('#search').val() },
						success: function(data){
											$('#search-ul').html(data);
						}
						});
	});

};

$(document).ready(ready);
$(document).on('page:load', ready);