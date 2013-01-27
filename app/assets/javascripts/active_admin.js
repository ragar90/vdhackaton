//= require active_admin/base

$(function(){
	$(".person_age").bind("change", function(e){
		console.log("HI")
		/*var age = parseInt($(this).attr("value"));

		if(age >= 18){
			$(this).next().addClass('display', 'none');
			$(this).next().next().addClass('display', 'none');
		}
		else{
			$(this).next().css('display', 'block');
			$(this).next().next().css('display', 'block');
		}
	});

	console.log("Hello hello")
});