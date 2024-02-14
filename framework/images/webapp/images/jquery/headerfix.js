$(window).scroll(function() {
  if ($(window).scrollTop() > 100) {
    $("#masthead").css({
      'position': 'fixed',
      'top': '0px',
      'width': '100%',
      'background':'#0093DD',
      'z-index': '99'
    });
  } else {
    $("#masthead").css({
      'position': 'relative',
      'background':'#0093DD',
      'width': '100%'
    })
  }
});
$(window).scroll(function() {
	  if ($(window).scrollTop() > 100) {
	    $(".dropdown").css({
	      'position': 'fixed',
	      'width': '100%',
	      'top':'45px',
	      'z-index': '99'
	    });
	  } else {
	    $(".dropdown").css({
	      'position': 'relative',
	      'width': '100%', 'display':'block','top':'0'
	    })
	  }
	});

$('.dropdown ul').find('li').click(function(){
	   //removing the previous selected menu state
	   $('.dropdown ul').find('li.active').addClass('isactive');
	   $('.selected').closest('ul').closest('li').addClass('isactive');
	    //is this element from the second level menu?
	    if($(this).closest('ul').hasClass('isnotactive')){
	    $(this).closest('ul').addClass('isactive');
	    //this is a parent element
	    }else{
	         $(this).addClass('isactive');
	        
	    }
	});