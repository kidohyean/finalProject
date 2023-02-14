
$(document).ready(function(){
	let index = 1;
	firstList(index);
	$('.flex li').click(function(){
		index = $(this).index();
		
		index++;
		$('.flex a').removeClass('active');
		$(this).children('a').addClass('active');

		$('.content').removeClass('on');
		$('#contents'+index).addClass('on');
		firstList(index);
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
        url:"/exercise/exerciseFirstList/"+pNum,
        dataType:'json',
        success:function(result){
			
            $('.rank_list').empty();
            let html = "";
            $.each(result.exList1, function(k,v){
                html += '<li><a href="/exercise/detailViewRoutineInfo/'+v.routineNo+'">'+v.routineName+'</a></li>'
            })
            $('.rank_list').append(html);
        },
        error:function(){
        }
    }); // ajax 종료 	
}