$(document).ready ->
	$(".sizes").on "change", ->
		$(this).parent().find(".visible").removeClass "visible"
		visible = $(this).parent().find("li")[$(this).val()]
		$(visible).addClass "visible"
