$(document).ready ->
	$('.page').click ->
		if $(this).children('a').length != 0
			page = $('.current').text
			href = '/mattresses?page=' + page
			$('.current').append $('<a>' + page + '</a>').attr({href : href, rel : 'next', 'data-remote' : true})
			$('.current').text ''
			$('.current').removeClass 'current'
			text = $(this).children('a').text
			$(this).children('a').remove
			$(this).text text
			$(this).addClass 'current'
			