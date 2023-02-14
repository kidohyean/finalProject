
$(document).ready(function(){
	let index = 1;
	let indexListP = 1;
	exerciseRankList(index);
	exerciseItemList(index,indexListP);
	$('.flex li').click(function(){
		index = $(this).index();
		
		index++;
		$('.flex a').removeClass('active');
		$(this).children('a').addClass('active');

		$('.content').removeClass('on');
		$('#contents'+index).addClass('on');
		exerciseRankList(index);
		exerciseItemList(index,indexListP);
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

function exerciseRankList(pNum){
	$.ajax({
        type:"post",
        url:"/exercise/exerciseRankList/"+pNum,
        dataType:'json',
        success:function(result){
			
            $('.rank_list ul').empty();
            let html = "";
            $.each(result.exListR, function(k,v){
                html += '<li><a href="/exercise/detailViewRoutineInfo/'+v.routineNo+'">'+v.routineName+'</a></li>'
            })
            $('.rank_list ul').append(html);
        },
        error:function(){
        }
    }); // ajax 종료 	
}

function exerciseItemList(pNum,num){
	$.ajax({
        type:"post",
        url:"/exercise/exerciseItemList/"+pNum+"/"+num,
        dataType:'json',
        success:function(result){
			
            $('.itemListBox').empty();
            let html = "";
            $.each(result.exListI, function(k,v){
                html += '<div class="exItem">';
				html += '<img src="../../image/'+v.routineNo+'.png">';
				html += '<p>'+v.routineName+'</p>';
				html += '</div>'
            })
            $('.itemListBox').append(html);
        },
        error:function(){
        }
    }); // ajax 종료 	
}