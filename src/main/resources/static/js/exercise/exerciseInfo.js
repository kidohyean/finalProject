let startPageNum = 1;
let endPageNum = 10;
$(document).ready(function(){
	let index = 1;
	let indexListP = 1;
	
	exerciseRankList(index);
	exerciseItemList(index,indexListP);
	exVideoList(index);
	$('.flex li').click(function(){
		index = $(this).index();
		
		index++;
		$('.flex a').removeClass('active');
		$(this).children('a').addClass('active');

		$('.content').removeClass('on');
		$('#contents'+index).addClass('on');
		exerciseRankList(index);
		exerciseItemList(index,indexListP);
		exVideoList(index);
	})
	$(document).on('click','.itemPageCount a',function(){
		let indexListP = $(this).html()
		exerciseItemList(index,indexListP);
	})

	$(document).on('click','.btPrev',function(){
		exerciseItemList(index,startPageNum-1);
	})

	$(document).on('click','.btNext',function(){
		exerciseItemList(index,endPageNum+1);
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
			$('.itemPageCount').empty();
            let html = "";
			let pageHtml = "";
            $.each(result.exListI, function(k,v){
                html += '<div class="exItem">';
				html += '<img src="../../image/'+v.routineNo+'.png">';
				html += '<p>'+v.routineName+'</p>';
				html += '<hr/>';
				html += '</div>';

				
            })
			if(result.prev){
				startPageNum = result.startPageNum;
				pageHtml +='<a class="btPrev"><</a>';
			}
			for(let pageNum = result.startPageNum; pageNum <= result.endPageNum; pageNum++){
				if(pageNum != result.select){
					pageHtml +='<a>'+pageNum+'</a>';
				}
				else{
					pageHtml +='<b>'+pageNum+'</b>';
				}
				
			}
			if(result.next){
				endPageNum = result.endPageNum;
				pageHtml +='<a class="btNext">></a>';
			}
			console.log(result.prev);
			console.log(result.startPageNum);
			console.log(result.endPageNum);
			console.log(result.next);
			console.log(result.select);
            $('.itemListBox').append(html);
			$('.itemPageCount').append(pageHtml);
        },
        error:function(){
        }
    }); // ajax 종료 	
}

function exVideoList(pNum){
	$.ajax({
        type:"post",
        url:"/exercise/exVideoList/"+pNum,
        dataType:'json',
        success:function(result){
			
            $('.slidesList-list').empty();
            let html = "";
            $.each(result.exVideoList, function(k,v){
                html += '<li class="slideList">';
				html += '<iframe width="380" height="245" src="'+v.exStretchlink+'" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>';
				html += '<p>'+v.exStretchName+'</p>';
				html += '</li>'
            })
            $('.slidesList-list').append(html);
        },
        error:function(){
        }
    }); // ajax 종료 	
}