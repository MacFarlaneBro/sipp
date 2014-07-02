$(window).scroll(function(){
    if($(window).scrollTop() > 110){
	$("#topButtons").css({
	    "position": "fixed",
	    "top": "0"
	});
    }
});

$(window).scroll(function(){
    if($(window).scrollTop() < 110){
	$("#topButtons").css({
	    "position": "absolute",
	    "top": "110px"
	});
    }
});
