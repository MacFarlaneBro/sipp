$(window).scroll(function(){
    if($(window).scrollTop() > 40){ 
	$("#topButtons").css({
	    "position": "fixed",
	    "top": "0"
	});
    }
});

$(window).scroll(function(){
    if($(window).scrollTop() < 40){
	$("#topButtons").css({
	    "position": "absolute",
	    "top": "40px"
	});
    }
});
