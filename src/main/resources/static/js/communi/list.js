

/*
$(document).ready(function(){
    console.log("start");
    $(".boardList").on('click',function(){
        console.log("on");
        location.href="/community/detailViewAggre/{agNum}";
    })

})*/

 /* $(document).ready(function(){
 	$('#"listSearchFrm"').on('submit', function(){ 	
 		event.preventDefault(); 		
 		
 		//폼에 입력한 값들을 쿼리 스트링 방식의 데이터로 변환 : serialize() 사용
 		//type=prdName&keyword=노트북 형식으로 만들어서 전송
 		var formData = $(this).serialize();
 		// 이렇게 보내고 컨트롤러에서 HashMap으로 받음 		
 		
 		// 서버에 전송하고 결과 받아서 처리
 		$.ajax({
 			type:"post",
 			url:"/community/Searchlist/{num}",
 			data: {"agName":$('.agName').val(),
                      "memId":$('.memId').val()},
    
                 success:function(result){
                     if(result == "success"){
                     location.href="/community/Searchlist/{num}"
                     }else{
    
                     }
                 },
                 error:function(){
                     alert("실패");
                 },
                 complete:function(){
                     //alert("작업 완료");
                 }
             }); // ajax 종료  	
 	});// submit 종료
 	});*/
