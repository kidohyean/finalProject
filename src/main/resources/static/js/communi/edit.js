/**
 * 
 */

$(document).ready(function(){

    $('#updateFormBox').on('submit', function(){
    var agText=$('textarea').val().replace(/\n/g,"<br>");
      event.preventDefault();
      if (confirm("저장하시겠습니까?") == true){ 
       $.ajax({
                 type:"post",
                 url:"/community/UpdateAggregation",
                 data: {"agName":$('.agName').val(),
                             "agText":agText,
                             "agNum":$('.agNum').val()},
    
                 success:function(result){
                     if(result == "success"){
                     location.href="/community/list/1"
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
    
       console.log("완료되었습니다.");
       alert("수정했습니다.");
     }else{
       alert("취소합니다");
       console.log("취소되었습니다");
     }
    
     });
     })