(function($) {
	if($('.scroll_magic').length > 0) {
		
		var page = 1;
		
		$(window).scroll(function() {
			if($(window).scrollTop() + $(window).height() == $(document).height()) {
				$.ajax({
					url : '/feed.json/' + page,
					dataTypeString : 'json',
					complete : function(xhr, status) {
						_.each(JSON.parse(xhr.responseText), function(bloc) {
							$('.scroll_magic').append( _.template($('#tmp_feed').html(), bloc) );
						});
						page += 1;
					},
				});
			}
		});
	}
}(jQuery));