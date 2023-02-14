
$(document).ready(function(){
 
	$('.flex li').click(function(){
		let index = $(this).index();
		index++;
		$('.flex a').removeClass('active');
		$(this).children('a').addClass('active');

		$('.content').removeClass('on');
		$('#contents'+index).addClass('on');
		console.log(index);
		///exercise/exerciseInfo/1
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
});

function firstList(pNum){
	$.ajax({
        type:"post",
        url:"/healthcare/calendarMyList",
        data: {"date":dateTime,},
        dataType:'json',
        success:function(result){
            $('.listItemUl').empty();
            let html = "";
            $.each(result.myList, function(k,v){
                
            })
            $('.listItemUl').append(html);
        },
        error:function(){
        }
    }); // ajax 종료 	
}