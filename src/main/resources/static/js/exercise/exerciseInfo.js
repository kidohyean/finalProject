
$(document).ready(function(){
 $('.flex a').click(function(){
            let index = $(this).index();
            index++;
            $('.flex a').removeClass('active');
            $(this).addClass('active');

            $('.content').removeClass('on');
            $('#contents'+index).addClass('on');
        })
   $('.triggerList').on('click', function() {
        if ($(this).hasClass('trigger-left')) {

          var $slideList = $('.slidesList-list .slideList').last()
                                               .clone()
                                               .css('margin-left','-380px');
          if(!$('.slidesList-list .slideList').eq(0).is(':animated')) {
            $('.slidesList-list').prepend($slideList);
            $('.slidesList-list .slideList').eq(0).animate({'margin-left':'13px'}, 500, function(){
              $('.slidesList-list .slideList').last().remove();
            });
          };
        } else {
          var $slideList = $('.slidesList-list .slideList').eq(0)
                                               .clone();
            $('.slidesList-list .slideList').eq(0).animate({'margin-left':'-380px'}, 500, function(){
              $('.slidesList-list').append($slideList);
              $(this).remove();
            });
        };
      });     
       
  /*    var movedIndex = 0;
	
	function moveSlide(index){
		movedIndex = index;
		
		// 슬라이드 이동
		var moveLeft = -(index * 430); // 왼쪽으로 이동 거리
		$('#event123').animate({'left': moveLeft}, 'slow');
	}
	
	$('#prevButton2').on('click', function(){
		if(movedIndex !=0)  
			movedIndex = movedIndex - 1; 
		
		moveSlide(movedIndex); 
	});	
	
	$('#nextButton2').on('click', function(){
		if(movedIndex != 4)  
			movedIndex = movedIndex + 1; 
		
		moveSlide(movedIndex); 
	});
	
	
	$('.controlButton').each(function(index) {
		$(this).hover(
			function() {
				$(this).attr('src', 'image/controlButton2.png');
			},
			function() {
				$(this).attr('src', 'image/controlButton1.png');				
			}
		);
		
		$(this).on('click', function() {
			moveSlide(index);
		})
	}); */
});

