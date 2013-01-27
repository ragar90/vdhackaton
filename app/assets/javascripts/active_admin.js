//= require active_admin/base

$(function(){
	$(".person_age").on("change", function(e){
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

	    var div_id = $(this).nextAll("select").attr("id");
	    var category = $(this).attr("value");
	    $.ajax({
	        url: "/day_meals/update_meals_ajax",
	        type: "GET",
	        data: {"category_id" : category, id_div : div_id},
	        dataType: "script"
	    });*/
	});

	console.log("Hello hello")
});