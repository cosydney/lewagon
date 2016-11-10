$(document).ready(function() {
	var docHeight = $(document).height();
	var winHeight = $(window).height();

	var barPosi = $('.prog_bar').position().top;

	$(window).on("scroll", function(event) {
		var pos = $(window).scrollTop();
		$(".prog_bar").css("width", ((pos / (docHeight - winHeight)) * 100) + "%");


		if(pos >= 100){
			$(".navbar-wagon-fixed").css('top', 0);
		}else{
			$(".navbar-wagon-fixed").css('top', '-70px');
		}


		if(pos >= barPosi - 70){
			$('.prog_bar').removeClass('sticky');	
		}else{
			$('.prog_bar').addClass('sticky');	
		}
	})
	
})